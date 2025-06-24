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
        \key c \major
        
        <fs >4 <gs >4 <as >4 \tuplet 3/2 { <fs >4 } <fs >8 <ds >1 <f >4 <g >4 <g >8 <gs >8 \tuplet 3/2 { <gs f >4 } <fs >8 r1 <gs >4 <as >4 \tuplet 3/2 { <gs e >8 } \tuplet 3/2 { <g >4 } <d >2. <b >8 <as >4. \break \tuplet 3/2 { <g >4 } <fs >4. \tuplet 3/2 { <gs >4 } <as >1 <fs >4 <gs as >2 \tuplet 3/2 { <g f >4 } <g >8 <d >1 <e >4 <fs as'' >4 <a >4 <ds' >4 <cs' >8 <d' >4 \tuplet 3/2 { <cs' >4 } <a >4 \tuplet 3/2 { <gs >4 } <fs >1 \break <ds f >2 <as >2. \tuplet 3/2 { <g >4 } <fs as'' >4 \tuplet 3/2 { <g >4 } <gs >2. <gs >2. <fs'' a'' >8 \tuplet 3/2 { <gs >4 } <fs >1 

        \bar "|."
    }

    \layout {

    }
}