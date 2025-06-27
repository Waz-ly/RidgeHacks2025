% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "bach_prelude"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 218
        \clef "treble"
        \key g \major
        
        <c c' >4 <e >4 <g >4 <c' >4 <e' >4 <g >4 <c' >4 <e' >4 <c c' >4 <c c' e >4 <g >4 <c' >4 <e' >4 <g >4 <c' >4 <e' >4. <c c' >4 <d d' >4 <a >4 <a d' d, >4 <d d' f' >4 <a >2 <f' >4 \break <c c' >4 <d d' >4 <a >4 <a d' d >4 <d d' f' >4 <a >4 <d, d d' >4 <f' >4 <b, b >4 <d d' >4 <g, g d' >2 <d d' f' >4 <g, g >4 <g, g d' d >4 <f' >4 <b, b >4 <d d' >4 <g, g >4 <g, g d d' >4 <d d' f' >4 <g, g >4 <g, g d' >4 <f' >4 \break <c c' >4 <e >4 <g >4 <c' c >4 \tuplet 3/2 { <e' >4 } <g >4 <c' >4 <e' >4 <c c' >4 <e >4 <g >4 <c' >4 <e' >4 <g >4 <c' >4 <e' >4 <c c' >4 <e >4 <a >4 <a a, e' >4 <a' >4 <a >4 <a, a e' >4 <a' >4 <c c' >4 \break <e >4 <a >4 <a, e' >4 <a' >4 <a a, e' >2 <a a' >4 <c' c >4 <d d' >4 <d fs >4 <a >4 <d' d >4 <fs >4 <d' a >2 <c c' >4 <d d' >4 <d fs >4 <a d' d >2 <c' fs >4 <a >4 <a d, d d' >4. <b, b >4 \break <d' d >4 <g, g >4 <g, g d' d >4 <g' >4 <g, g >4 <g, g d' d >4 <g' >4 <b, b >4 <d d' >4 <g, g >4 <g, g d' >4 <g g' >4 <g >4 <g, g d' >4 <g' >4 <b, b >4 <c c' >4 <b e, e >4 <a >4 <c' >4 <c' e >4 <a >4 <c' >4 <b, b >4 \break <c c' >4 <b e e, >4 <a >4 <c' >4 <c' e >4 <a >4 <c' >2. 

        \bar "|."
    }

    \layout {

    }
}