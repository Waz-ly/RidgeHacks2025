import numpy as np
import subprocess
import lilypond
import wave
import shutil

pitch_to_string = {
    0 : "c",
    1 : "cs",
    2 : "d",
    3 : "ds",
    4 : "e",
    5 : "f",
    6 : "fs",
    7 : "g",
    8 : "gs",
    9 : "a",
    10 : "as",
    11 : "b"
}

length_to_string = {
    100 : "1",
    133 : "2.",
    200 : "2",
    267 : "4.",
    400 : "4",
    600 : "4-",
    800 : "8",
    1200: "8-"
}

def find_key(notes):
    major_key_profile = [1.82, 0.64, 1.00, 0.67, 1.23, 1.17, 0.72, 1.49, 0.69, 1.05, 0.66, 0.83]
    minor_key_profile = [1.71, 0.72, 0.95, 1.45, 0.70, 0.95, 0.68, 1.28, 1.07, 0.73, 0.90, 0.85]

    note_appearances = np.bincount([note[0]%12 for note in notes], minlength=12)
    major_correlate = [np.dot(major_key_profile, np.roll(note_appearances, -i)) for i in range(12)]
    minor_correlate = [np.dot(minor_key_profile, np.roll(note_appearances, -i)) for i in range(12)]
    if np.max(minor_correlate) > np.max(major_correlate):
        key = pitch_to_string[np.argmax(minor_correlate)] + " \\minor"
    else:
        key = pitch_to_string[np.argmax(major_correlate)] + " \\major"

    print("key: " + key)
    print()

    return key

def note_to_string(note):
    note_string = ""

    if note[0] == -999:
        note_string += "r"
    else:
        note_string += pitch_to_string[note[0]%12]
        octave = note[0] // 12

        if octave < 0:
            for _ in range(abs(octave)):
                note_string += ","
        elif octave > 0:
            for _ in range(octave):
                note_string += "\'"

    note_string += length_to_string[note[1]]

    if note_string[-1] == "-":
        note_string = "\\tuplet 3/2 { %s }" % note_string[:-1]

    note_string += " "

    return note_string

def notes_to_string(notes):
    notes_string = ""
    for note in notes:
        notes_string += note_to_string(note)
    
    return notes_string

def fix_lengths(notes):
    fixed_notes = []

    for note in notes:
        if note[1] <= 0:
            fixed_notes.append([note[0], 100])
        else:
            keylist = list(length_to_string.keys())
            fixed_length = keylist[np.argmin(np.abs(keylist - note[1]))]
            fixed_notes.append([note[0], fixed_length])

    return fixed_notes

def fix_pitches(notes, mode):
    fixed_notes = []
    previous_freq = 261.63
    previous_pitch = 0

    for note in notes:
        if note[0] < 1:
            fixed_notes.append([-999, note[1]])
        else:
            fixed_notes.append([int(np.round(12*np.log2(note[0] / previous_freq))) + previous_pitch, note[1]])

            if mode == "relative":

                previous_freq = note[0]
                previous_pitch = fixed_notes[-1][0]
                abs_pitch = int(np.round(12*np.log2(note[0] / 261.63)))
                if np.abs(abs_pitch - previous_pitch) > 1:
                    previous_pitch = abs_pitch

            elif mode == "absolute":
                pass
            else:
                raise Exception("invalid freq->note mapping mode selected")

    return fixed_notes

class MusicManager:
    def __init__(self, output_folder, name, notes, tempo, key, mode):
        self.output_folder = output_folder
        self.name = name
        self.notes = fix_pitches(fix_lengths(notes), mode)
        self.tempo = tempo
        self.key = find_key(self.notes)

    def write_music(self):
        notes_string = notes_to_string(self.notes)

        with open(self.output_folder + "/" + self.name + ".ly", 'w') as f:
            f.write(
'''%% testing file

\\version "2.25.12"
\\language "english"

\\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "%s"
}

\\fixed c'' {
    \\time 4/4
    \\tempo 4 = %s
    \\clef "treble"
    \\key %s
    
    %s

    \\bar "|."
}''' % (self.name, self.tempo, self.key, notes_string))

        subprocess.run([lilypond.executable(), self.output_folder + "/" + self.name + ".ly"])
        shutil.move(self.name + ".pdf", self.output_folder + "/" + self.name + ".pdf")

    def play_music(self, sampleRate):
        music = np.array([])
        frequencies = np.power(2, np.array(self.notes).T[0]/12) * 261.63

        for frequency, length in zip(frequencies, np.array(self.notes).T[1]/100):
            time_vector = np.linspace(0, 240/self.tempo/length, int(sampleRate*240/self.tempo/length))
            waveform = 0.25*np.sin(2*np.pi*frequency*time_vector)*(np.power(2, -10*time_vector) + 3)
            music = np.concatenate((music, waveform))

        left_channel = music
        right_channel = music
        audio = np.array([left_channel, right_channel]).T
        audio = (audio * (2 ** 15 - 1)).astype("<h")

        with wave.open(self.output_folder + "/" + self.name + ".wav", "w") as f:
            f.setnchannels(2)
            f.setsampwidth(2)
            f.setframerate(sampleRate)
            f.writeframes(audio.tobytes())