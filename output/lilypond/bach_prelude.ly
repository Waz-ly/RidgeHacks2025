% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "bach_prelude"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 109
            \clef "treble"
            \key g \major

            <c' >8 <e >8 <g >8 <c' >8 <e' >8 <g >8 <c' >8 <e' >8 <c' >8 <c' >8 <g >8 <c' >8 <e' >8 <g >8 <c' >8 \tuplet 3/2 { <e' >4 } <c' >8 <d' >8 <a >8 <cs' >8 <e' >8 <a >8 <cs' >8 <f' >8 <c' >8 <d' >8 <a >8 <cs' >8 <e' >8 <a >8 <d' >8 <f' >8 \break <c' >8 <d' >8 <g >8 <d' >8 <e' >8 <g >8 <d' >8 <f' >8 <c' >8 <d' >8 <g >8 <d' >8 <e' >8 <g >8 <d' >8 <f' >8 <c' >8 <e >8 <g >8 <c' >8 \tuplet 3/2 { <e' >8 } <g >8 <c' >8 <e' >8 <c' >8 <e >8 <g >8 <c' >8 <ds' >8 <g >8 <c' >8 <e' >8 <c' >8 \break <e >8 <a >8 <e' >8 <a' >8 <a >8 <e' >8 <a' >8 <c' >8 <e >8 <a >8 <ds' >8 <a' >8 <a >8 <ds' >8 \tuplet 3/2 { <a' >4 } <c' >8 <d' >8 <fs >8 <a >8 <d' >8 <fs >8 <a >8 <d' >8 <c' >8 <d' >8 <fs >8 <a >8 <d' >8 <a >8 <a >8 \tuplet 3/2 { <cs' >4 } <c' >8 \break <d' >8 <g >8 <d' >8 <g' >8 <g >8 <d' >8 <g' >8 <c' >8 <d' >8 <g >8 <d' >8 <g' >8 <g >8 <ds' >8 <g' >8 <c' >8 <c' >8 <f >8 <a >8 <c' >8 <e >8 <a >8 <c' >8 <b, >8 <c' >8 <f >8 \tuplet 3/2 { <a >4 } <c' >8 <e >8 <a >8 <c' >4. \break 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key g \major

            <c c' >8 <e >8 <g >8 <c c' >8 <e' >8 <g >8 <c' >8 <e' >8 <c c' >8 <c c' e >8 <g >8 <c' >8 <e' >8 <g >8 <c' c >8 \tuplet 3/2 { <e' >4 } <c c' >8 <d d' >8 <a >8 <a d' >8 <d d' f' >8 <a >8 <a d, d d' >8 <f' >8 <c c' >8 <d d' >8 <a >8 <a d' d >8 <d d' f' >8 <a >8 <a d' d >8 <f' >8 \break <b, b >8 <b, d d' >8 <g >8 <g, g d' d >8 <d d' f' >8 <g, g >8 <g, g d d' >8 <f' >8 <b, b >8 <d d' >8 <g, g >8 <g, g d d' >8 <d d' f' >8 <g, g >8 <g, g d' >8 <f' >8 <c c' >8 <e >8 <g >8 <c c' >8 \tuplet 3/2 { <c' e' e >8 } <g >8 <c' >8 <e' >8 <c c' >8 <e >8 <g >8 <c' >8 <e' e >8 <g >8 <c' >8 <e' >8 <c c' >8 \break <e >8 <a >8 <a a, e' >8 <a a' >8 <a >8 <a a, e' >8 <a' >8 <c c' >8 <e >8 <a >8 <a a, e' >8 <a' >8 <a >8 <a a, e' >8 \tuplet 3/2 { <a a' >4 } <c c' >8 <d d' >8 <d fs >8 <a >8 <d' d >8 <fs >8 <a >8 <d d' >8 <c c' >8 <d d' >8 <d fs >8 <a >8 <d d' >8 <c' fs >8 <a >8 \tuplet 3/2 { <a d, d d' >4 } <b, b >8 \break <d d' >8 <g, g >8 <g, g d' d >8 <d g' >8 <g, g >8 <g, g d' d >8 <g' >8 <b, b >8 <d d' >8 <g >8 <g, g d' d >8 <g g' >8 <g >8 <g g, d' >8 <g' >8 <b, b >8 <c c' >8 <c b e, e >8 <a >8 <c' >8 <c' e >8 <a >8 <c' >8 <b, b >8 <c c' >8 <c b e e, >8 \tuplet 3/2 { <a >4 } <c c' >8 <c' e >8 <a >8 <c' >4. \break r16 

        }
    >>

    \layout {

    }
}