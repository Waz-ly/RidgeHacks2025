import numpy as np
import librosa
import matplotlib.pyplot as plt
import scipy.signal

def convert_to_audio(data: np.ndarray) -> np.ndarray:
    if data.ndim == 2:
        audio = np.add(data[:, 0], data[:, 1])
    else:
        audio = data
    # audio = nr.reduce_noise(y=audio, sr=sampleRate)
    return audio

# ----------------------------------------------------------------------- #
# /////////////////////////////////////////////////////////////////////// #
# ----------------------------------------------------------------------- #

def get_spectrogram(audio, sampleRate, windowLength, fft_length, interFrameTime, plot):
    spectrogram = np.abs(librosa.stft(audio,
                                      n_fft=fft_length,
                                      win_length=int(windowLength*sampleRate),
                                      hop_length=int(interFrameTime*sampleRate)))
    mel_gram = librosa.feature.melspectrogram(S=spectrogram)

    f = np.linspace(0, sampleRate/2, mel_gram.shape[0])
    t = np.linspace(0, interFrameTime*mel_gram.shape[1], mel_gram.shape[1])
    F, T = np.meshgrid(f, t)

    spectrogram = spectrogram.T
    spectrogram = spectrogram / np.mean(spectrogram)
    mel_gram = mel_gram.T
    mel_gram = mel_gram / np.mean(mel_gram)

    if plot:
        print("stft dimensions (f, t):", mel_gram.shape[::-1])
        ax = plt.axes(projection='3d')
        ax.plot_surface(F, T, mel_gram, cmap='viridis', alpha=0.8)
        plt.show()

    return spectrogram, mel_gram, t

def find_spectral_overlap(spectrogram, plot):

    logged_spectrogram = np.log10(spectrogram)

    spectralOverlap = np.subtract(logged_spectrogram[1:,:], logged_spectrogram[:-1,:])
    spectralOverlap[spectralOverlap < 0] = 0
    spectralOverlap = np.mean(spectralOverlap, axis=1)

    # from scipy.signal import savgol_filter
    # slow = savgol_filter(spectralOverlap, 21, 1)
    # fast = savgol_filter(spectralOverlap, 7, 2)
    # spectralOverlap = 0.5*slow + fast

    spectralOverlap = spectralOverlap / np.mean(spectralOverlap)

    if plot:
        plt.plot(spectralOverlap)
        plt.show()

    return spectralOverlap

def find_tempo(spectralOverlap, interFrameTime, plot):

    n = len(spectralOverlap)
    variance = np.var(spectralOverlap)

    spectralOverlap = spectralOverlap - np.mean(spectralOverlap)

    auto_correlation = np.correlate(spectralOverlap, spectralOverlap, mode="full")[-n:]
    auto_correlation = auto_correlation / (variance * np.arange(n, 0, -1))

    std_bpm = 1 # in octaves
    bpm_standard = 120

    peaks = scipy.signal.find_peaks(auto_correlation)[0][1:]
    candidate_bpms = 60 / (interFrameTime * peaks)
    bpm_height = auto_correlation[peaks]

    weights = np.exp(-0.5 * (np.log2(candidate_bpms / bpm_standard) / std_bpm) ** 2)

    weighted = bpm_height * weights

    tempo_bpm = candidate_bpms[np.argmax(weighted)]

    tempo_hz = tempo_bpm / 60
    tempo_fps = tempo_hz * interFrameTime
    interbeat_time = 1 / tempo_hz
    interbeat_frames = 1 / tempo_fps

    if plot:
        plt.plot(auto_correlation)
        plt.show()

    print("tempo:", tempo_bpm)

    return interbeat_frames, tempo_bpm

def find_beats(spectralOverlap, time_vector, interbeat_frames, mode, plot):
    threshold = 1.0 + 0.0*np.std(spectralOverlap)
    beats_peak_derived = scipy.signal.find_peaks(spectralOverlap, prominence = threshold, distance = interbeat_frames/12)[0]
    beats_peak_derived = np.concatenate((beats_peak_derived, [spectralOverlap.shape[0] - 1]))

    pulses = np.zeros(spectralOverlap.shape[0])
    pulses[np.arange(0, spectralOverlap.shape[0] - 1, interbeat_frames).astype(np.int16)] = 1
    beat_sync = np.correlate(np.append(spectralOverlap, np.zeros(int(2*interbeat_frames))), pulses)
    initial_beat = scipy.signal.find_peaks(beat_sync, prominence = 1)[0][0]
    beats_tempo_calculated = np.arange(initial_beat, spectralOverlap.shape[0] - 1, interbeat_frames)
    beats_tempo_calculated = beats_tempo_calculated.astype(np.int16)

    if plot:
        plt.plot(time_vector[np.arange(spectralOverlap.shape[0])], spectralOverlap, 'b-')
        plt.vlines(time_vector[beats_peak_derived], np.min(spectralOverlap), np.max(spectralOverlap), color='r', linestyles='dashed')
        plt.vlines(time_vector[beats_tempo_calculated], np.min(spectralOverlap), np.max(spectralOverlap), color='g', linestyles='dotted')
        plt.show()

    if mode == 'tempo':
        return beats_tempo_calculated
    elif mode == 'peaks':
        return beats_peak_derived

# ----------------------------------------------------------------------- #
# /////////////////////////////////////////////////////////////////////// #
# ----------------------------------------------------------------------- #

class Rhythm():
    def __init__(self, input_folder, file, plot):
        file = file + '.wav'
        path = input_folder + '/' + file

        data, self.sampleRate = librosa.load(path, sr=4000)
        self.audio = convert_to_audio(data)
        self.windowLength = 0.1
        self.interFrameTime = 0.0125
        self.fft_length = 8192
        print("sample rate:", self.sampleRate)

        # spectrogram - graphs stft
        self.spectrogram, self.mel_gram, self.time_vector = get_spectrogram(self.audio, self.sampleRate, self.windowLength, self.fft_length, self.interFrameTime, plot)

        # overlap - graphs spectral overlap
        spectralOverlap = find_spectral_overlap(self.mel_gram, plot)

        # findng tempo - graphs spectral overlap frequencies
        interbeat_frames, self.tempo = find_tempo(spectralOverlap, self.interFrameTime, plot)

        # beat matching - graphs beats
        self.beats = find_beats(spectralOverlap, self.time_vector, interbeat_frames, 'peaks', plot)

    def get_audio(self):
        return self.audio

    def get_info(self):
        return self.sampleRate, self.fft_length, self.interFrameTime, self.tempo
    
    def get_beats(self):
        return self.beats
    
    def get_spectrogram(self):
        return self.spectrogram