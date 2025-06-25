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
        \key c \major
        
        <a, >4 \tuplet 3/2 { <a, >4 } <a, e >8 <e >4 <e >4 \tuplet 3/2 { <fs >4 } \tuplet 3/2 { <g >8 } \tuplet 3/2 { <f >4 } <fs >8 <e >2 <cs >2 <c >4 <cs >4 \tuplet 3/2 { <c as, >8 } r4 <as, >4 <a, >2 <e >4 <e >4 <cs >4 <d >4 <cs >4 <cs >4 <b, >2 \break <e >4 <e >4 <d >2 <cs >4 <cs >4 r2 <a, >4 <a, >4 <e >4 <e >4 <fs >4 <fs >4 <e >2 <d >2 <c >4 \tuplet 3/2 { <cs >4 } \tuplet 3/2 { <cs >8 } r4 <b, >8 \tuplet 3/2 { <c >4 } <a, >2. \break 

        \bar "|."
    }

    \layout {

    }
}