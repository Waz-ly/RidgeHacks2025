import numpy as np
import matplotlib.pyplot as plt
import scipy.signal

class MusicReader:
    def __init__(self, spectrogram, spectral_info, beats):
        frame_difference = beats[1:] - beats[:-1]
        minimum_difference = np.min(frame_difference)
        frame_difference = np.concatenate((frame_difference, [beats.shape[0] - beats[-1]]))
        frame_difference = frame_difference*spectral_info[2]
        self.note_lengths = np.array(np.round(1/(frame_difference*spectral_info[3]/240)), dtype=int)

        reading_frames = beats + minimum_difference//2

        notes = []
        for slice in spectrogram[reading_frames]:
            notes.append(scipy.signal.find_peaks(slice, distance=slice.shape[0])[0][0])

        frequencies = np.array(notes)/spectral_info[1]
        self.frequencies = np.array(frequencies, dtype=int)

    def get_notes(self):
        return np.stack((self.frequencies, self.note_lengths), axis=1)