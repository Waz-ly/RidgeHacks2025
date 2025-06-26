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
        
        \tuplet 3/2 { <f' >8 } <fs' gs' >4. <gs' >8 <as' fs' >4. <ds' >8 r2. <f' >4 <fs' >4 <fs' g' gs'' >4 \tuplet 3/2 { <f' >4 } \tuplet 3/2 { <f' >8 } r1 <fs' >4 <gs' >4 \tuplet 3/2 { <gs' >8 } \tuplet 3/2 { <as'' >4 } <fs' >4 <ds' >4 r2 <b' >4 <as' >4 \break \tuplet 3/2 { <gs >4 } <fs' >4. <gs' >8 \tuplet 3/2 { <gs' >8 } <as' >2. <c' d >4 <fs' >4 <gs' >4 <a' >4 <fs' >4 r1 <f' e'' >4 <fs' gs' >2 <d'' >4 <d'' as' >2. \tuplet 3/2 { <a' gs >4 } \tuplet 3/2 { <gs'' >8 } \tuplet 3/2 { <fs' >8 } <cs' >1 \break <ds' fs' >2 <as' >4. <a' >8 <as' gs' >2 <gs' fs' >2 <gs' >2. <d'' >2. <g' fs' >2 <fs' >2 <fs >2. <fs >4 

        \bar "|."
    }

    \layout {

    }
}