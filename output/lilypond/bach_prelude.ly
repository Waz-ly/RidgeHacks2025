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
        \tempo 4 = 109
        \clef "treble"
        \key g \major
        
        <c c' >8 <e >8 <g >8 <c' >8 <e' >8 <g >8 <c' >8 <e' >8 <c c' >8 <c c' e >8 <g >8 <c' >8 <e' >8 <g >8 <c' >8 \tuplet 3/2 { <e' >4 } <c c' >8 <d d' >8 <a >8 <a d' >8 <d d' f' >8 <a >8 <a d' d d, >8 <f' >8 <c c' >8 <d d' >8 <a >8 <a d' d >8 <d d' f' >8 <a >8 <a d, d' d >8 <f' >8 <b, b >8 <d d' >8 <g >8 <g, g d' >8 <d d' f' >8 <g, g >8 <g, g d' d >8 <f' >8 <b, b >8 <d d' >8 <g, g >8 <g, g d d' >8 <d d' f' >8 <g, g >8 <g, g d' >8 <f' >8 \break <c c' >8 <e >8 <g >8 <c' c >8 \tuplet 3/2 { <e' >8 } <g >8 <c' >8 <e' >8 <c c' >8 <e >8 <g >8 <c' >8 <e' >8 <g >8 <c' >8 <e' >8 <c c' >8 <e >8 <a >8 <a a, e' >8 <a' >8 <a >8 <a a, e' >8 <a' >8 <c c' >8 <e >8 <a >8 <a a, e' >8 <a' >8 <a >8 <a a, e' >8 \tuplet 3/2 { <a a' >4 } <c' c >8 <d d' >8 <d fs >8 <a >8 <d' d >8 <fs >8 <a >8 <d d' >8 <c c' >8 <d d' >8 <d fs >8 <a >8 <d d' >8 <c' fs >8 <a >8 <a d, d d' >8 \break <b, b >8 <d' d >8 <g, g >8 <g, g d' d >8 <d d' g' >8 <g, g >8 <g, g d' d >8 <g' >8 <b, b >8 <d d' >8 <g >8 <g, g d' >8 <g g' >8 <g >8 <g, g d' >8 <g' >8 <b, b >8 <c c' >8 <b, b e, e >8 <a >8 <c' >8 <c' e >8 <a >8 <c' >8 <b, b >8 <c c' >8 <b e e, >8 <a >8 <c' >8 <c' e >8 <a >8 <c' >4. 

        \bar "|."
    }

    \layout {

    }
}