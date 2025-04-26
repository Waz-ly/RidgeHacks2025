import numpy as np
import matplotlib.pyplot as plt
import librosa
import subprocess
import lilypond

notes = [
    [293, 4],
    [293, 4],
    [440, 4],
    [440, 4],
    [493, 4],
    [493, 4],
    [440, 2]
]
tempo = 120
key = r"g \major"

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

def freq_to_note(freq, previous: int):
    if freq == 0:
        return "r", previous

    freq = freq / 261.63
    discrete_note = int(np.round(12*np.log2(freq)))

    note = discrete_note_to_string[discrete_note]
    octave = (discrete_note + 6 - previous) // 12

    if octave < 0:
        for _ in range(abs(octave)):
            note += ","
    elif octave > 0:
        for _ in range(octave):
            note += "\'"
    
    return note, discrete_note

notes_string = ""
previous = 0
for note in notes:
    note_string, previous = freq_to_note(note[0], previous)
    notes_string += "%s%s " % (note_string, note[1])

with open("music.ly", 'w') as f:
    f.write(
'''%% testing file

\\version "2.25.12"
\\language "english"

\\header {
    title = "auto-scored"
    composer = "yours truly"
    subtitle = "sheet music"
}

\\relative c' {
    \\time 4/4
    \\tempo 4 = %s
    \\clef "treble"
    \\key %s
    
    %s

    \\bar "|."
}''' % (tempo, key, notes_string))

subprocess.run([lilypond.executable(), "music.ly"])