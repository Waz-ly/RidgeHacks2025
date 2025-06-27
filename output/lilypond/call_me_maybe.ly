% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "call_me_maybe"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 120
        \clef "treble"
        \key g \major
        
        <c a, >4 <b, >4 <b, >4 <b, a, >4 r4 <b, >4 <b, >4 <b, >4 <c >4 <b, >4 <b, >4 <a, >4 <a, >4 <a, >4 <g,, g, >4 <d b, >4 <c >4 <b, >4 <b, >4 <b, a, >4 r4 <b, >4 <b, >4 r4 \break <c >4 <b, >4 <b, >4 <a, >4 <a, >4 <g, >4 <g, g,, g, >4 <d b, >4 <c >4 <c >4 <c >4 <g, >4 <d d, >4 <d >4 <d >4 <g, e >4 r4 <c c, g >4 <c >4 r4 <d >4 <g >2. \break <c,, g,,, >4 <g,,, >4 <g,,, g >4 <g,,, >8 <g,, d >8 <g,,, d,, >4 <d,, >4 <g,,, >4 <g,,, e,, >4 <c,, >4 <c,, g,,, >4 <g,,, c' >4 <g,,, >8 <fs,,, g,, g' >8 <g,,, >8 <d,, >8 <d,, >4 <g,,, a >4 <g,,, >4 <c,, g,,, >4 <g,,, >4 <g,,, >4 <g,, g,,, d >4 <g,,, >8 <d,, >8 <d,, g,,, >4 <fs,,, >4 <g,,, e,, >4 \break <c,, g,,, >4 <c,, >4 <g,,, >4 <g,, g,,, >4 <g,,, >8 <d,, >8 <d,, a, g,,, >4 <g,,, a >4 <g g,,, >4 <c,, >4 <g,,, >4 <g,,, >4 <g,,, d >4 <g,,, d,, >4 <d,, g,,, >4 <g,,, >4 <e,,, g >4 <c,, g,,, >4 <c,, >4 <g,,, c' g'' >4 <g,,, g g, >4 <g,,, d,, >4 <d,, g,,, >4 <g,,, a >4 <g,,, g >4 \break <c,, >4 <g,,, g >4 <g,,, >4 <g,,, d >4 <d g,,, d,, >4 <d,, a, >4 <g,,, >4 <e,,, >4 <g,,, c,, >4 <c,, >4 <g,,, c' g'' >4 <g,,, g >4 <g,,, d,, a, >4 <d,, g,,, >4 <g,,, a >4 <g' g >4. 

        \bar "|."
    }

    \layout {

    }
}