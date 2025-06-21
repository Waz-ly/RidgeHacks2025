import numpy as np
import matplotlib.pyplot as plt
import scipy.signal

class MusicReader:
    def __init__(self, spectrogram, spectral_info, beats):
        frame_difference = beats[1:] - beats[:-1]
        frame_difference = frame_difference*spectral_info[2]
        self.note_lengths = np.array(np.round(1/(frame_difference*spectral_info[3]/240)), dtype=int)

        notes = []
        for slice in spectrogram:
            notes.append(scipy.signal.find_peaks(slice, distance=slice.shape[0])[0][0])
            if slice[notes[-1]] < 25:
                notes[-1] = 0

        plt.plot(notes)

        notes_at_beats = []
        for i in range(beats.shape[0] - 1):
            notes_at_beats.append(np.median(notes[beats[i]:beats[i+1]]))
            plt.hlines(notes_at_beats[-1], beats[i], beats[i+1], colors='r')

        plt.show()

        frequencies = np.array(notes_at_beats)/(spectral_info[1]/2)*spectral_info[0]
        self.frequencies = np.array(frequencies, dtype=int)

    def get_notes(self):
        return np.stack((self.frequencies, self.note_lengths), axis=1)