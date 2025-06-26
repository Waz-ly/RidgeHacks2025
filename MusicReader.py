import numpy as np
import matplotlib.pyplot as plt
import scipy.signal

class MusicReader:
    def __init__(self, spectrogram, spectral_info, beats, plot):
        frame_difference = beats[1:] - beats[:-1]
        self.note_lengths = np.array(np.round(100/(frame_difference*spectral_info[2]*spectral_info[3]/240)), dtype=int)

        notes = []
        for slice in spectrogram:
            peaks = scipy.signal.find_peaks(slice, height=3)
            peak_amplitudes = peaks[1]["peak_heights"]
            peaks = peaks[0]
            
            peak_contribution = np.zeros(slice.shape[0])
            salience = np.zeros(slice.shape[0])
            alpha = 0.7

            for peak, peak_amplitude in zip(peaks, peak_amplitudes):
                delta = int(peak * 0.06)
                for i in range(peak - delta, peak + delta):
                    if i < peak_contribution.shape[0]:
                        peak_contribution[i] += peak_amplitude * np.square(np.cos((i - peak)/delta*np.pi/2))

            if not peaks.shape[0] == 0:
                for i in range(peaks[-1]):
                    for h in range(1, 6):
                        if i*h < peak_contribution.shape[0]:
                            salience[i] += peak_contribution[i*h] * alpha**h

            salience_peaks = scipy.signal.find_peaks(salience, height=np.max(salience)*0.75)[0]

            notes.append(salience_peaks)

        if plot:
            x_vals = []
            y_vals = []
            for i, sublist in enumerate(notes):
                for val in sublist:
                    x_vals.append(i)
                    y_vals.append(val)
            plt.scatter(x_vals, y_vals)

        notes_at_beats = []
        for i in range(beats.shape[0] - 1):
            note_set = []
            for j in range(beats[i], beats[i + 1]):
                note_set.extend(notes[j])
            note_set = np.array(note_set)

            mean_clusters = {}
            converged_points = []
            for note in note_set:
                current = note
                delta = current * 0.07
                while True:
                    neighbors = note_set[np.abs(note_set - current) <= delta]
                    new_mean = np.mean(neighbors)
                    
                    if np.abs(new_mean - current) < 1e-2:
                        break
                    current = new_mean
                converged_points.append(current)

            converged_points = np.round(converged_points, decimals=1)
            for converged in converged_points:
                if converged not in mean_clusters:
                    mean_clusters[converged] = 0
                mean_clusters[converged] += 1

            notes_at_beats.append([])
            for key, value in mean_clusters.items():
                if value > (beats[i+1] - beats[i])*0.3:
                    notes_at_beats[-1].append(key)

            if plot:
                plt.hlines(notes_at_beats[-1], beats[i], beats[i+1], colors='r')

        if plot:
            plt.show()

        self.frequencies = [[int(note/(spectral_info[1]/2)*spectral_info[0]) for note in beat] for beat in notes_at_beats]

    def get_notes(self):
        return [[frequency, note_length] for frequency, note_length in zip(self.frequencies, self.note_lengths)]