% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "Orion_Mika_Nakashiba"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 144
        \clef "treble"
        \key fs \major
        
        \tuplet 3/2 { <f' >8 } <fs' gs' >4. <gs' >8 <as' >8 <fs' >4 <ds' >8 <ds' g''' b >4. <as >2 \tuplet 3/2 { <e' >8 } \tuplet 3/2 { <f' >4 } <fs''' >4 <fs' g' gs'' >4 \tuplet 3/2 { <f' a''' >4 } \tuplet 3/2 { <f' >8 } r1 <fs' cs''' >4 <gs' >4 \tuplet 3/2 { <gs' >8 } \tuplet 3/2 { <as'' >4 } <fs' >4 \tuplet 3/2 { <ds' >8 } \tuplet 3/2 { <d' ds'' >4 } r2 <b' >4 <as' >4 \break \tuplet 3/2 { <gs >4 } <fs' >4. <gs' >8 \tuplet 3/2 { <gs' >8 } <as' f''' >2. <c' d >4 \tuplet 3/2 { <cs' gs f' >8 } <fs' >4 <gs' ds''' >4 <a' >4 <fs' >8 <fs' >8 \tuplet 3/2 { <ds' >8 } <ds' >1 <f' e'' >4 <as''' fs' >4 <gs' >4 \tuplet 3/2 { <d'' >8 } <ds'' >8 <d'' >2 <as' >4 \tuplet 3/2 { <a' gs >4 } \tuplet 3/2 { <gs'' >8 } \tuplet 3/2 { <fs' >8 } <fs' f' a''' >8 \break <fs' >4. <cs' >2 <ds' >4 <fs >4 \tuplet 3/2 { <a' >8 } <as' >4. <a' >8 <as' >4 <gs' >4 <fs' >4 <gs' >4 <gs' ds''' >2. <d'' >2. <gs'' >4 <fs' >4 <fs' >2 <fs >2 <fs' >4 \break \tuplet 3/2 { <fs >4 } \tuplet 3/2 { <fs, >8 } 

        \bar "|."
    }

    \layout {

    }
}