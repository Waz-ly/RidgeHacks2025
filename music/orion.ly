% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "orion"
}

\score {
    \fixed c'' {
        \time 4/4
        \tempo 4 = 144
        \clef "treble"
        \key fs \major
        
        fs4 gs4 as4 \tuplet 3/2 { fs4 } fs''8 ds1 f4 fs4 g8 gs8 \tuplet 3/2 { g4 } fs8 cs1 gs4 as4 \tuplet 3/2 { g8 } \tuplet 3/2 { g4 } ds2. b8 as4. \break \tuplet 3/2 { g4 } fs4. \tuplet 3/2 { gs4 } as1 fs4 gs2 \tuplet 3/2 { g4 } fs8 d1 e4 fs4 a4 ds'4 cs'8 d'4 \tuplet 3/2 { d'4 } a4 \tuplet 3/2 { gs4 } fs1 \break e2 as2. \tuplet 3/2 { gs4 } fs'4 \tuplet 3/2 { g4 } gs2. gs2. g8 \tuplet 3/2 { gs4 } fs1 

        \bar "|."
    }

    \layout {

    }
}