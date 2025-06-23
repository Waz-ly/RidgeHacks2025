import numpy as np
import matplotlib.pyplot as plt
import scipy.signal

class MusicReader:
    def __init__(self, spectrogram, spectral_info, beats):
        frame_difference = beats[1:] - beats[:-1]
        self.note_lengths = np.array(np.round(100/(frame_difference*spectral_info[2]*spectral_info[3]/240)), dtype=int)

        notes = []
        for slice in spectrogram:
            peaks = scipy.signal.find_peaks(slice, height=1)
            peak_amplitudes = peaks[1]["peak_heights"]
            peaks = peaks[0]
            
            peak_contribution = np.zeros(slice.shape[0])
            salience = np.zeros(slice.shape[0])
            alpha = 0.5

            for peak, peak_amplitude in zip(peaks, peak_amplitudes):
                delta = int(peak * 0.06)
                for i in range(peak - delta, peak + delta):
                    if i < peak_contribution.shape[0]:
                        peak_contribution[i] += peak_amplitude * np.square(np.cos((i - peak)/delta*np.pi/2))

            if not peaks.shape[0] == 0:
                for i in range(peaks[-1]):
                    for h in range(1, 7):
                        if i*h < peak_contribution.shape[0]:
                            salience[i] += peak_contribution[i*h] * alpha**h

            salience_peaks = scipy.signal.find_peaks(salience, height=1, distance=salience.shape[0])[0]

            if salience_peaks.shape[0] == 0:
                notes.append(0)
            else:
                notes.append(salience_peaks[0])

        notes = np.array(notes)

        plt.plot(notes)

        notes_at_beats = []
        for i in range(beats.shape[0] - 1):
            if np.count_nonzero(notes[beats[i]:beats[i+1]] == 0) / frame_difference[i] > 0.75:
                notes_at_beats.append(0)
            else:
                notes_at_beats.append(np.median(notes[np.nonzero(notes[beats[i]:beats[i+1]]) + beats[i]]))
            plt.hlines(notes_at_beats[-1], beats[i], beats[i+1], colors='r')

        plt.show()

        frequencies = np.array(notes_at_beats)/(spectral_info[1]/2)*spectral_info[0]
        self.frequencies = np.array(frequencies, dtype=int)

    def get_notes(self):
        return np.stack((self.frequencies, self.note_lengths), axis=1)