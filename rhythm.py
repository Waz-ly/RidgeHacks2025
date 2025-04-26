import numpy as np
import librosa
import ffmpeg
import os
import matplotlib.pyplot as plt
import scipy.signal

def setup(folder: str) -> None:
    for root, dirs, files in os.walk(folder):
        for file in files:
            path = folder + '/' + file
            newPath = folder + '/' + folder + ' (wav)/' + file[:-4] + '.wav'
            if not file.startswith('.') and not os.path.isfile(newPath):
                ffmpeg.input(path).output(newPath, loglevel='quiet', preset='ultrafast').run(overwrite_output=1)

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

def get_spectrogram(audio, sampleRate, windowLength, fft_length, interFrameTime):
    spectrogram = np.abs(librosa.stft(audio,
                                      n_fft=fft_length,
                                      win_length=int(windowLength*sampleRate),
                                      hop_length=int(interFrameTime*sampleRate)))
    print("stft dimensions (f, t):", spectrogram.shape)

    f = np.linspace(0, sampleRate/2, spectrogram.shape[0])
    t = np.linspace(0, interFrameTime*spectrogram.shape[1], spectrogram.shape[1])
    F, T = np.meshgrid(f, t)
    spectrogram = spectrogram.T

    for freq in range(spectrogram.shape[0]):
        spectrogram[freq] = np.square(spectrogram[freq])
        spectrogram[freq] = spectrogram[freq]/np.mean(spectrogram[freq])

    ax = plt.axes(projection='3d')
    surf = ax.plot_surface(F, T, spectrogram, cmap='viridis', alpha=0.8)
    plt.show()

    return spectrogram, t

def find_spectral_overlap(spectrogram):
    spectralOverlap = []
    for time in range(spectrogram.shape[0] - 1):
        spectralOverlap.append(np.mean(np.maximum(spectrogram[time + 1], spectrogram[time])))
    spectralOverlap = np.array(spectralOverlap)

    # moving average
    averaging_length = 7
    averaging_array = np.ones(averaging_length)/averaging_length
    spectralOverlap = np.convolve(spectralOverlap, averaging_array, mode='same')

    plt.plot(spectralOverlap)
    plt.show()

    return spectralOverlap

def find_tempo(spectralOverlap, interFrameTime):
    overlapFrequencies = np.array_split(np.fft.fft(spectralOverlap), 2)[0]
    overlapFrequencies = np.square(np.abs(overlapFrequencies))
    excludeDC = 48
    excludeDC = int(excludeDC/60*interFrameTime*overlapFrequencies.shape[0]*2)

    tempo_fps = (np.argmax(overlapFrequencies[excludeDC:]) + excludeDC)/overlapFrequencies.shape[0]/2
    tempo_hz = tempo_fps/interFrameTime
    tempo_bpm = tempo_hz*60
    interbeat_time = 1/tempo_hz
    interbeat_frames = 1/tempo_fps

    plt.plot(np.abs(overlapFrequencies[1:]))
    plt.vlines(excludeDC, np.min(np.abs(overlapFrequencies)), np.max(np.abs(overlapFrequencies[1:])), color='r', linestyles="dashed")
    plt.show()
    print("tempo:", tempo_bpm)

    return interbeat_frames, tempo_bpm

def find_beats(spectralOverlap, time_vector, interbeat_frames, mode):
    beats_peak_derived = scipy.signal.find_peaks(spectralOverlap, prominence = 0.1)[0]

    pulses = np.zeros(spectralOverlap.shape[0])
    pulses[np.arange(0, spectralOverlap.shape[0] - 1, interbeat_frames).astype(np.int16)] = 1
    beat_sync = np.correlate(np.append(spectralOverlap, np.zeros(int(2*interbeat_frames))), pulses)
    initial_beat = scipy.signal.find_peaks(beat_sync, prominence = 1)[0][0]
    beats_tempo_calculated = np.arange(initial_beat, spectralOverlap.shape[0] - 1, interbeat_frames)
    beats_tempo_calculated = beats_tempo_calculated.astype(np.int16)

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
    def __init__(self):
        # setup
        print()
        setup('convertFiles')

        file = 'twinkle.wav'
        path = 'convertFiles/convertFiles (wav)/' + file

        data, self.sampleRate = librosa.load(path, sr=4000)
        self.audio = convert_to_audio(data)
        self.windowLength = 0.1
        self.interFrameTime = 0.0125
        self.fft_length = 8192
        print("sample rate:", self.sampleRate)

        # spectrogram - graphs stft
        self.spectrogram, self.time_vector = get_spectrogram(self.audio, self.sampleRate, self.windowLength, self.fft_length, self.interFrameTime)

        # overlap - graphs spectral overlap
        spectralOverlap = find_spectral_overlap(self.spectrogram)

        # findng tempo - graphs spectral overlap frequencies
        interbeat_frames, self.tempo = find_tempo(spectralOverlap, self.interFrameTime)

        # beat matching - graphs beats
        self.beats = find_beats(spectralOverlap, self.time_vector, interbeat_frames, 'peaks')

        print()

    def get_audio(self):
        return self.audio

    def get_info(self):
        return self.sampleRate, self.fft_length, self.interFrameTime, self.tempo
    
    def get_beats(self):
        return self.beats
    
    def get_spectrogram(self):
        return self.spectrogram