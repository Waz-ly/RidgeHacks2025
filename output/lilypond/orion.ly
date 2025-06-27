% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "orion"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 144
        \clef "treble"
        \key fs \major
        
        \tuplet 3/2 { <f f' >8 } <fs' fs >4. \tuplet 3/2 { <gs >8 } <gs gs' as as' >4 <fs fs' >4 <ds >8 <b,, >2. <f >4 \tuplet 3/2 { <f cs, >8 } <fs >4 <fs g gs' >4 <f >8 \tuplet 3/2 { <f f' >8 } <as,, >1 <fs >4 <gs gs gs' >4 \tuplet 3/2 { <gs gs' >8 } \tuplet 3/2 { <as' as >4 } <fs >4 <ds d' >4 <b,, >2 <b >4 <as >4 \break \tuplet 3/2 { <gs, gs >8 } \tuplet 3/2 { <gs gs, d, >8 } <fs >4. <gs >8 \tuplet 3/2 { <gs gs' >8 } <as >2. <d, >4 \tuplet 3/2 { <cs, g, >8 } <fs >4 <gs >4 <gs a >4. <fs >4 \tuplet 3/2 { <ds ds' ds >4 } <b,, >2. <e e' >4 <fs fs' gs >2 \tuplet 3/2 { <d' >4 } <d' >2 <as >4 <d, gs, gs >8 <as gs' >8 <fs fs' >8 <f fs fs' >8 \break <fs ds, >4 <cs >2 <ds >4 <fs b,, fs, >4 <as as' >4. \tuplet 3/2 { <as >8 } \tuplet 3/2 { <a a' >8 } <as as' >4. <gs gs' >4 <fs fs' >4 <gs gs' >4 <gs gs' >2. <b,, >2. <gs' g >4 <fs >4 <fs, fs >4 <fs fs, >4 <fs, fs fs >2 <fs, fs >4 \break <fs fs, >4 <fs,, >8 <e,, e,,, c, >8 \tuplet 3/2 { <e,, cs, gs >8 } \tuplet 3/2 { <e,, gs,, cs, >4 } \tuplet 3/2 { <ds,,, as,, g,, >8 } 

        \bar "|."
    }

    \layout {

    }
}