% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "liebesleid"
}

\score {
    \fixed c'' {
        \time 4/4
        \tempo 4 = 99
        \clef "treble"
        \key a \minor
        
        \tuplet 3/2 { e'4 } a'8 \tuplet 3/2 { a'8 } \tuplet 3/2 { a'8 } \tuplet 3/2 { a'8 } \tuplet 3/2 { a'8 } \tuplet 3/2 { a'8 } e''2 e''4 e''2 d''4 f''1 g'4 d''2. d''2 c''4 e''1 f'4 \break \tuplet 3/2 { f'8 } f'8 \tuplet 3/2 { fs'8 } c''4 \tuplet 3/2 { c''8 } c''4 \tuplet 3/2 { c''8 } \tuplet 3/2 { c''8 } \tuplet 3/2 { c''8 } c''8 \tuplet 3/2 { c''4 } \tuplet 3/2 { c''8 } as'4 d''1 \tuplet 3/2 { a'4 } a'8 \tuplet 3/2 { fs'8 } \tuplet 3/2 { fs'8 } \tuplet 3/2 { fs'4 } a'8 gs'4 a'1 \tuplet 3/2 { a'8 } a'4. 

        \bar "|."
    }

    \layout {

    }
}