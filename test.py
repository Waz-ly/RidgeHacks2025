import numpy as np
import matplotlib.pyplot as plt
import librosa
import subprocess
import lilypond

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

notes_list = ["d4", "d4", "a'4", "a4", "b4", "b4", "a2", "r1"]
for i in notes_list:
    music += i + " "

music += r'''

    \bar "|."
}'''

with open("test.ly", 'a') as f:
    f.write(music)

subprocess.run([lilypond.executable(), "test.ly"])