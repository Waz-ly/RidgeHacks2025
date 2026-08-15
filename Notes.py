import numpy as np
import matplotlib.pyplot as plt
import scipy.signal

class Notes:
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
            note_set = np.array([note for chord in notes[beats[i]:beats[i+1]] for note in chord])

            mean_clusters = {}
            for note in note_set:
                current = note
                delta = current * 0.07

                while True:
                    neighbors = note_set[np.abs(note_set - current) <= delta]
                    new_mean = np.mean(neighbors)
                    
                    if np.abs(new_mean - current) < 1e-1:
                        break
                    current = new_mean

                converged_point = np.rint(current)
                if converged_point not in mean_clusters:
                    mean_clusters[converged_point] = 0
                mean_clusters[converged_point] += 1

            notes_at_beats.append([])
            for key, value in mean_clusters.items():
                if value > (beats[i+1] - beats[i])*0.3:
                    notes_at_beats[-1].append(key)

            if plot:
                plt.hlines(notes_at_beats[-1], beats[i], beats[i+1], colors='r')

        if plot:
            plt.show()

        self.frequencies = [[int(note/(spectral_info[1])*spectral_info[0]) for note in beat] for beat in notes_at_beats]

    def get_notes(self):
        return [[frequency, note_length] for frequency, note_length in zip(self.frequencies, self.note_lengths)]

class YIN:

    def get_f_gram(self, audio, windowLength, interFrameTime, sampleRate, tempo, fmin=120, fmax=1200, plot=False):

        # window_samples = int(windowLength*sampleRate)
        # frame_samples = int(interFrameTime*sampleRate)
        # frames = (len(audio) - window_samples) // frame_samples - 1
    
        # tau_max = window_samples
        # r = np.zeros((frames, tau_max))
        # print((frames, tau_max))
    
        # for i in range(frames):
    
        #     for tau in range(tau_max):
    
        #         t = i * frame_samples
    
        #         r[i, tau] = np.sum(audio[t : t + window_samples - tau] * audio[t + tau : t + window_samples])
    
        # r_t, r_tau = np.meshgrid(np.arange(tau_max) / sampleRate, np.arange(frames) * interFrameTime)
    
        # ax = plt.axes(projection='3d')
        # ax.plot_surface(r_t, r_tau, r, cmap='viridis', alpha=0.8)
        # plt.show()

        sos = scipy.signal.butter(N=1, Wn=fmin, btype="high", output="sos", fs=sampleRate)
        audio = scipy.signal.sosfilt(sos, audio)
    
    
        window_samples = int(windowLength*sampleRate)
        tau_max = window_samples
        frame_samples = int(interFrameTime*sampleRate)
        frames = (len(audio) - window_samples - tau_max) // frame_samples - 1
    
        def parabolic_interpolation(y, x0):
    
            if x0 <= 0 or x0 >= len(y) - 1:
                return float(x0)
            
            y_minus, y0, y_plus = y[x0 - 1], y[x0], y[x0 + 1]
            denom = (y_minus - 2 * y0 + y_plus)
    
            if denom == 0:
                return float(x0)
            
            shift = 0.5 * (y_minus - y_plus) / denom
    
            return x0 + shift
    
    
        tau_lo = int(sampleRate / fmax)
        tau_hi = int(sampleRate / fmin)
        f = np.zeros(frames)
    
        continuity = 1
        previous_best = None

        d = np.zeros(tau_max)
        d1 = np.zeros_like(d)
        d2 = np.zeros_like(d)
    
        for i in range(frames):
    
            t = i * frame_samples
    
            for tau in range(tau_max):
    
                d[tau] = np.sum(np.square(audio[t : t + window_samples] - audio[t + tau : t + window_samples + tau]))
    
                if tau == 0:
    
                    d1[tau] = 1.0
    
                else:
    
                    d1[tau] = d[tau] / (np.sum(d[1:tau+1]) / tau)
    
                if previous_best is None:
    
                    d2[tau] = d1[tau]
    
                else:
    
                    d2[tau] = d1[tau] + continuity * (np.log2(tau / previous_best + 1e-8))**2
    
            peaks = scipy.signal.find_peaks(-d2[tau_lo:tau_hi], height=-2, prominence=0.65)[0] + tau_lo
            best = None if not peaks.size > 0 else peaks[0]
    
            best_fit_sample = np.argmin(d2[tau_lo:tau_hi]+tau_lo) if best is None else best
            best_value = d2[best_fit_sample]
            best_t = t
            d2_ij = None
            for j in range(-int(0.015 * sampleRate), int(0.015 * sampleRate)):
    
                t = np.clip(i * frame_samples + j, 0, len(audio))
    
                d_ij = np.zeros(best_fit_sample + 1)
    
                for tau in range(best_fit_sample + 1):
                
                    d_ij[tau] = np.sum(np.square(audio[t : t + window_samples] - audio[t + tau : t + window_samples + tau]))
    
                d1_ij = d_ij[best_fit_sample] / (np.sum(d_ij[1:best_fit_sample+1]) / best_fit_sample)
    
                if previous_best is None:
                
                    d2_ij = d1_ij
    
                else:
    
                    d2_ij = d1_ij + continuity * (np.log2(best_fit_sample / previous_best + 1e-8))**2
    
                if d2_ij < best_value:
    
                    best_value = d2_ij
                    best_t = t
    
            d_ij = np.zeros(tau_max)
            d1_ij = np.zeros_like(d_ij)
            d2_ij = np.zeros_like(d_ij)
            for tau in range(tau_max):
            
                d_ij[tau] = np.sum(np.square(audio[best_t : best_t + window_samples] - audio[best_t + tau : best_t + window_samples + tau]))
    
                if tau == 0:
                
                    d1_ij[tau] = 1.0
    
                else:
    
                    d1_ij[tau] = d_ij[tau] / (np.sum(d_ij[1:tau+1]) / tau)
    
                if previous_best is None:
                
                    d2_ij[tau] = d1_ij[tau]
    
                else:
    
                    d2_ij[tau] = d1_ij[tau] + continuity * (np.log2(tau / previous_best + 1e-8))**2
    
            d2 = d2_ij
            peaks = scipy.signal.find_peaks(-d2[tau_lo:tau_hi], height=-2, prominence=0.65)[0] + tau_lo
            best = None if not peaks.size > 0 else peaks[0]
    
            adjusted_best = None if best is None else parabolic_interpolation(d2, best)
    
            f[i] = 0 if best is None else sampleRate / adjusted_best
            previous_best = best
    
            if i % 20 == 0:

                print(f"t: {i * interFrameTime:.4f} seconds      f: {f[i]} Hz")
    
                # step = 5
                # plt.plot(np.arange(tau_hi - tau_lo), -d1[tau_lo:tau_hi])
                # plt.plot(np.arange(tau_hi - tau_lo), -d2[tau_lo:tau_hi])
                # plt.xticks(np.arange(0, tau_hi - tau_lo, step), [f"{v:.0f}" for v in sampleRate / np.arange(tau_lo, tau_hi, step)], rotation=45)
                # plt.show()

        f = scipy.signal.medfilt(f, kernel_size=11)

        plt.plot(f)
        plt.show()
    
        audio = []
        phase = 0.0
        sample_rate = 44100
     
        for freq in f:
    
            n = int(round(interFrameTime * sample_rate))
     
            t = np.arange(n) / sample_rate
            theta = phase + 2 * np.pi * freq * t
            frame = np.sin(theta)
    
            phase = theta[-1] + 2 * np.pi * freq / sample_rate
     
            audio = np.concatenate([audio, frame])
     
        import wave
     
        with wave.open("test.wav", "w") as wf:
            wf.setnchannels(1)
            wf.setsampwidth(2)
            wf.setframerate(sample_rate)
            wf.writeframes((audio * 32767).astype(np.int16).tobytes())

        return f

    def get_notes(self, f_gram, beats, interFrameTime, tempo, plot=False):

        notes_at_beats = []
        for i in range(beats.shape[0] - 1):

            if beats[i] > len(f_gram):
                break

            note = np.median(f_gram[beats[i] : beats[i+1]])

            notes_at_beats.append([note] if note > 20 else [])

            if plot:
                plt.plot(f_gram, zorder=1)
                plt.hlines(notes_at_beats[-1], beats[i], beats[i+1], colors='r', zorder=2)

        if plot:
            plt.show()

        frame_difference = beats[1:] - beats[:-1]
        self.note_lengths = np.array(np.round(100/(frame_difference*interFrameTime*tempo/240)), dtype=int)
        self.frequencies = notes_at_beats

        return [[frequency, note_length] for frequency, note_length in zip(self.frequencies, self.note_lengths)]
        