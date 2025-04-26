import numpy as np
import subprocess
import lilypond
import wave
import shutil

discrete_note_to_string = {
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

def freq_to_note(freq):
    if freq == 0:
        return "r"

    freq = freq / 261.63
    discrete_note = int(np.round(12*np.log2(freq)))

    note = discrete_note_to_string[discrete_note%12]
    octave = discrete_note // 12

    if octave < 0:
        for _ in range(abs(octave)):
            note += ","
    elif octave > 0:
        for _ in range(octave):
            note += "\'"
    
    return note

def notes_to_string(notes):
    notes_string = ""
    for note in notes:
        note_string = freq_to_note(note[0])
        notes_string += "%s%s " % (note_string, note[1])
    
    return notes_string

def fix_lengths(notes):
    fixed_notes = []

    for note in notes:
        if note[1] <= 0:
            fixed_notes.append([note[0], 1])
        else:
            fixed_notes.append([note[0], int(np.power(2, np.round(np.log2(note[1]))))])

    return fixed_notes

def fix_note_frequencies(notes):
    fixed_notes = []

    for note in notes:
        if note == 0:
            fixed_notes.append([0, note[1]])
        else:
            fixed_notes.append([np.power(2, np.round(12*np.log2(note[0] / 261.63)) / 12) * 261.63, note[1]])

    return fixed_notes

class MusicManager:
    def __init__(self, notes, tempo, key):
        self.notes = fix_note_frequencies(fix_lengths(notes))
        self.tempo = tempo
        self.key = key

    def write_music(self):
        notes_string = notes_to_string(self.notes)

        with open("music/music.ly", 'w') as f:
            f.write(
'''%% testing file

\\version "2.25.12"
\\language "english"

\\header {
    title = "auto-scored"
    composer = "yours truly"
    subtitle = "sheet music"
}

\\fixed c'' {
    \\time 4/4
    \\tempo 4 = %s
    \\clef "treble"
    \\key %s
    
    %s

    \\bar "|."
}''' % (self.tempo, self.key, notes_string))

        subprocess.run([lilypond.executable(), "music/music.ly"])
        shutil.move("music.pdf", "music/music.pdf")

    def play_music(self, sampleRate):
        music = np.array([])

        for note in self.notes:
            time_vector = np.linspace(0, 240/self.tempo/note[1], int(sampleRate*240/self.tempo/note[1]))
            waveform = 0.25*np.sin(2*np.pi*note[0]*time_vector)*(np.power(2, -10*time_vector) + 3)
            music = np.concatenate((music, waveform))

        left_channel = music
        right_channel = music
        audio = np.array([left_channel, right_channel]).T
        audio = (audio * (2 ** 15 - 1)).astype("<h")

        with wave.open("music/music.wav", "w") as f:
            f.setnchannels(2)
            f.setsampwidth(2)
            f.setframerate(sampleRate)
            f.writeframes(audio.tobytes())