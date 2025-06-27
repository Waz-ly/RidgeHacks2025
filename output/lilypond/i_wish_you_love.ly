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
        \tempo 4 = 215
        \clef "treble"
        \key g \major
        
        <c e >2 <d >2. <c d >2 <e >2 r2. <b, g,,, g,, cs >2 <d d, >2 <g,, d >1 <b, d >1 \break <g, >2. <c >2 <c >2 <c >2 <c a,, >2. <c a, >2 <a, >2 r2. <ds >2 <b, >1 \break <a, >2. <a, >2 <a,, a, >2 <g, c >2. <e >2 <f cs >4 <g >4 <d,, e >2. <e >4 <e d,, >4 <d,, c a, ds >2 <g,,, a,, a, g,, >4 <g,,, g,, >4 <g,, g,,, e >2 \break <g,, b, ds >4 <b, >2 <d >4 <d g >4 <d >2. <g,, d >4 <g,, >4 <g,, d c >2 <c,, d d, >4 <d >4 <d a,,, a,, d >2 <a,,, e,, cs >4 <a,, c a,,, >4 <c ds,, >4 <ds,, c >4 <f >4 <d,, c >2 <c f,, f, f >4 \break <c >4 <a,, >4 <a, c d,, >2 <d,, d, >4 <b, b, >4 <b, g,, g,,, g,, >2 <g,,, b, >4 <g,, e >2 <d,, >4 <e >4 <g,, c,, d >2 <as, d g,, g, >4 <d g,, >4 <d g,, >2. <d >4 <c,, >2. \break \tuplet 3/2 { <fs,, >8 } 

        \bar "|."
    }

    \layout {

    }
}