import numpy as np
import matplotlib.pyplot as plt
import librosa
import subprocess
import lilypond

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

with open("test.ly", 'w') as f:
    f.write(
r'''% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "yours truly"
    subtitle = "sheet music"
}''')
    
music = r'''
\relative c' {
    \time 4/4
    \tempo 4 = 120
    \clef "treble"
    \key g \major
    
'''

note_freqs = [293, 293, 440, 440, 493, 493, 440]

notes_list = []
previous = 0
for freq in note_freqs:
    note_string, previous = freq_to_note(freq, previous)
    notes_list.append(note_string)

for i in notes_list:
    music += i + "4 "

music += r'''

    \bar "|."
}'''

with open("test.ly", 'a') as f:
    f.write(music)

subprocess.run([lilypond.executable(), "test.ly"])