% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "twinkle"
}

\score {
    \fixed c'' {
        \time 4/4
        \tempo 4 = 95
        \clef "treble"
        \key a \major
        
        gs,4 \tuplet 3/2 { a,4 } d8 e4 e4 \tuplet 3/2 { fs4 } \tuplet 3/2 { g8 } \tuplet 3/2 { fs4 } fs8 e2 d2 c4 cs4 \tuplet 3/2 { b,8 } b,4 b,4 a,2 ds4 e4 cs4 d4 cs4 cs4 b,2 \break f4 e4 d2 cs4 cs4 b,2 a,4 a,4 e4 e4 fs4 fs4 e2 d2 c4 \tuplet 3/2 { cs4 } \tuplet 3/2 { cs8 } b,4 b,8 \tuplet 3/2 { c4 } a,2. \break 

        \bar "|."
    }

    \layout {

    }
}