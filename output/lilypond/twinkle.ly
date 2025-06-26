% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "twinkle"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 95
        \clef "treble"
        \key a \major
        
        <a, >8 <a, >8 \tuplet 3/2 { <a, >4 } <a, e >8 \tuplet 3/2 { <e >8 } <e >8 <e >4 \tuplet 3/2 { <fs >4 } \tuplet 3/2 { <g >8 } \tuplet 3/2 { <f >4 } <fs >8 <e >2 <cs >2 \tuplet 3/2 { <b, >8 } <cs >4 <cs >4 \tuplet 3/2 { <c as, >8 } \tuplet 3/2 { <as, >8 } \tuplet 3/2 { r4 } \tuplet 3/2 { <as, >8 } \tuplet 3/2 { <b, >4 } <a, >2 \tuplet 3/2 { <ds >8 } \tuplet 3/2 { <e >4 } <e >4 <cs >4 <d >4 \tuplet 3/2 { <cs >4 } r8 <cs >4 <b, >2 \break <e >4 <e >4 <d >4 <d >4 <cs >4 <cs >4 \tuplet 3/2 { <b, >4 } r4. <a, >4 <a, >4 <e >4 <e >4 \tuplet 3/2 { <fs >4 } \tuplet 3/2 { r8 } <fs >4 <e >2 <d >4. <d >4 \tuplet 3/2 { <c >8 } <c >4 \tuplet 3/2 { <cs >4 } \tuplet 3/2 { <cs >8 } r4 <b, >8 \tuplet 3/2 { <c >4 } <a, >2. \break 

        \bar "|."
    }

    \layout {

    }
}