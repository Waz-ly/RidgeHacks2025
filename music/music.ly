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
    \tempo 4 = 95
    \clef "treble"
    \key c \major
    
    as'4 a4 f8 e4 g4 fs4 ds4 b'4 c,8 cs2 b'4 cs,4 as'8 b4 gs4 ds4 ds4 f4 cs4 d4 b'4 cs,4 b'2 f4 e4 cs2 b'16 cs,4 cs4 b'4 g4 gs4 a4 e4 e4 fs4 fs4 ds4 gs4 b2 b4 cs,4 as'4 b8 c,8 g'4 b1 

    \bar "|."
}