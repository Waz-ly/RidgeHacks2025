import numpy as np
import subprocess
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
    1200: "8-",
    1600: "16"
}

def find_key(notes):
    major_key_profile = [1.82, 0.64, 1.00, 0.67, 1.23, 1.17, 0.72, 1.49, 0.69, 1.05, 0.66, 0.83]
    minor_key_profile = [1.71, 0.72, 0.95, 1.45, 0.70, 0.95, 0.68, 1.28, 1.07, 0.73, 0.90, 0.85]

    note_appearances = np.bincount([note%12 for chords in notes for note in chords[0]], minlength=12)
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
    chord_open = "<"
    chord_close = ">"

    if note[0].size == 0:
        note_string += "r"
        chord_open = ""
        chord_close = ""
    else:
        for chord_note in note[0]:
            note_string += pitch_to_string[chord_note % 12]
            octave = chord_note // 12

            if octave < 0:
                for _ in range(abs(octave)):
                    note_string += ","
            elif octave > 0:
                for _ in range(octave):
                    note_string += "\'"

            note_string += " "

    if length_to_string[note[1]][-1] == "-":
        note_string = "\\tuplet 3/2 { %s%s%s%s }" % (chord_open, note_string, chord_close, length_to_string[note[1]][:-1])
    else:
        note_string = "%s%s%s%s" % (chord_open, note_string, chord_close, length_to_string[note[1]])

    note_string += " "

    return note_string

def notes_to_string(notes):
    notes_string = ""
    line_length = 0
    for note in notes:
        notes_string += note_to_string(note)

        line_length += 100/note[1]
        if line_length >= 4:
            notes_string += "\\break "
            line_length = 0
    
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

def fix_pitches(notes):
    fixed_notes = []
    mid_c = 261.63

    for note in notes:
        fixed_notes.append([np.rint(12*np.log2(np.array(note[0]) / mid_c)).astype(int), note[1]])

    return fixed_notes

class MusicManager:
    def __init__(self, output_folder, name, notes, yin_notes, tempo):
        self.output_folder = output_folder
        self.name = name
        self.notes = fix_pitches(fix_lengths(notes))
        self.yin_notes = fix_pitches(fix_lengths(yin_notes))
        self.tempo = tempo
        self.key = find_key(self.notes)

    def write_music(self):
        notes_string = notes_to_string(self.notes)
        yin_notes_string = notes_to_string(self.yin_notes)

        with open(self.output_folder + "/lilypond/" + self.name + ".ly", 'w') as f:
            f.write(
'''%% testing file

\\version "2.25.12"
\\language "english"

\\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "%s"
}

\\score {
    \\new PianoStaff

    <<

        \\new Staff = "solo" \\fixed c' {
            \\tempo 4 = %s
            \\clef "treble"
            \\key %s

            %s

        }

        \\new Staff = "multi" \\fixed c {
            \\time 4/4
            \\clef "treble"
            \\key %s

            %s

        }
    >>

    \\layout {

    }
}''' % (self.name, self.tempo, self.key, yin_notes_string, self.key, notes_string))

        subprocess.run(["lilypond", self.output_folder + "/lilypond/" + self.name + ".ly"])
        shutil.move(self.name + ".pdf", self.output_folder + "/sheet_music/" + self.name + ".pdf")

    def play_music(self, sampleRate):
        music = np.array([])
        for note, yin_note in zip(self.notes, self.yin_notes):
            frequencies = np.power(2, np.array(note[0])/12) * 261.63
            time_vector = np.linspace(0, 240/self.tempo/note[1]*100, int(sampleRate*240/self.tempo/note[1]*100))
            waveform = np.zeros(int(sampleRate*240/self.tempo/note[1]*100))

            for frequency in frequencies:
                waveform += 0.05*np.sin(2*np.pi*frequency*time_vector)*(np.power(2, -10*time_vector) + 3)

            yin_frequencies = np.power(2, np.array(yin_note[0])/12) * 261.63

            for frequency in yin_frequencies:
                waveform += 0.15*np.sin(2*np.pi*frequency*time_vector)*(np.power(2, -10*time_vector) + 3)

            music = np.concatenate((music, waveform))

        music = np.tanh(music / np.max(np.abs(music)) * 1.2)

        left_channel = music
        right_channel = music
        audio = np.array([left_channel, right_channel]).T
        audio = (audio * (2 ** 15 - 1)).astype("<h")

        with wave.open(self.output_folder + "/audio/" + self.name + ".wav", "w") as f:
            f.setnchannels(2)
            f.setsampwidth(2)
            f.setframerate(sampleRate)
            f.writeframes(audio.tobytes())