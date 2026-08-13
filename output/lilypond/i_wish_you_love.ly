% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "i_wish_you_love"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 54
        \clef "treble"
        \key g \major
        
        <c e >8 \tuplet 3/2 { <d >4 } <c d >8 <e >8 \tuplet 3/2 { r4 } <b, g,,, g,, cs >8 <d d, >8 <g,, d >4. <b, d >4 \tuplet 3/2 { <g, >4 } <c >8 <c >8 <c >8 \tuplet 3/2 { <c a,, >4 } <c a, >8 <a, >8 \tuplet 3/2 { r4 } <ds >8 <b, >4 \tuplet 3/2 { <a, >4 } <a, >8 <a,, a, >8 \tuplet 3/2 { <g, c >4 } <e >8 <f cs >16 <g >16 \tuplet 3/2 { <d,, e >4 } <e >16 <e d,, >16 <d,, c a, ds >8 <g,,, a,, a, g,, >16 <g,,, g,, >16 <g,, g,,, e >8 <g,, b, ds >16 <b, >8 <d >16 <d g >16 \tuplet 3/2 { <d >4 } <g,, d >16 <g,, >16 <g,, d c >8 <c,, d d, >16 <d >16 <d a,,, a,, d >8 <a,,, e,, cs >16 <a,, c a,,, >16 <c ds,, >16 <ds,, c >16 <f >16 <d,, c >8 <c f,, f, f >16 \break <c >16 <a,, >16 <a, c d,, >8 <d,, d, >16 <b, b, >16 <b, g,, g,,, g,, >8 <g,,, b, >16 <g,, e >8 <d,, >16 <e >16 <g,, c,, d >8 <as, d g,, g, >16 <d g,, >16 \tuplet 3/2 { <d g,, >4 } <d >16 \tuplet 3/2 { <c,, >4 } <fs,, >16 

        \bar "|."
    }

    \layout {

    }
}