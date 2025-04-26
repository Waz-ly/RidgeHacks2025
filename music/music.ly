% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "yours truly"
    subtitle = "sheet music"
}

\relative c' {
    \time 4/4
    \tempo 4 = 60
    \clef "treble"
    \key g \major
    
    d4 d4 a'4 a4 b4 b4 a2 

    \bar "|."
}