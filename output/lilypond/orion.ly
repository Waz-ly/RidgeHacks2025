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
        
        <gs >2 <fs >2 \tuplet 3/2 { <ds >4 } r2. <f >4 \tuplet 3/2 { <f c'' >8 } <fs'' >4 <fs g gs' >4 \tuplet 3/2 { <f a'' >4 } \tuplet 3/2 { <f >8 } r1 <fs cs'' >4 <gs >4 \tuplet 3/2 { <gs >8 } \tuplet 3/2 { <as' >4 } <fs >4 <ds d' >8 \tuplet 3/2 { <d ds' >8 } r2 <b >4 <as >4 \break \tuplet 3/2 { <gs, >4 } <fs >4. \tuplet 3/2 { <gs >4 } \tuplet 3/2 { <gs >8 } <as f'' >2. <c d, >4 \tuplet 3/2 { <cs gs, f >8 } <fs >4 <gs >2 <fs >4 \tuplet 3/2 { <ds >4 } <as, >2. <f e' >4 <as'' fs gs >2 <d' >4 <d' >2 <as >4 \tuplet 3/2 { <a gs, >4 } \tuplet 3/2 { <gs' >8 } \tuplet 3/2 { <fs >8 } <f fs' a'' >8 \break <cs >2. <ds >4 <fs, >4 <as >4. \tuplet 3/2 { <a >8 } <as gs >2 <gs fs >2 <gs ds'' >2. <d' >2. <g fs >2 <fs >2 <fs, >2 <fs >4 <fs, >4 \break 

        \bar "|."
    }

    \layout {

    }
}