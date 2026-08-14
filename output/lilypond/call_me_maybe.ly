% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "call_me_maybe"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 120
            \clef "treble"
            \key g \major

            <d >8 <g >8 <e >8 <ds >8 <fs >8 <ds >8 <e >8 <fs >8 <ds >8 <fs >8 <d >8 <g >8 <d >8 <e >8 <g >8 <d >8 <cs >8 <b, >8 <b, >8 <b, >8 <b, >8 <b, >8 <a, >8 <b, >8 <g >8 <b, >8 <b, >8 <b, >8 <b, >8 <b, >8 <b, >16 <ds >16 \tuplet 3/2 { <e >4 } \break <e >8 <d >8 <d >16 <cs >16 \tuplet 3/2 { <b, >4 } <b, >8 <b, >8 <cs >8 <a, >8 <e >8 <a, >8 <a, >8 <f >8 <g, >8 \tuplet 3/2 { <g, >8 } <b, >16 <d >8 <b, >8 <gs, >16 <cs >16 <c >8 <b, >8 <b, >8 <b, >8 <b, >16 <b, >8 <a, >8 <a, >8 <f >8 <b, >8 <b, >8 <b, >8 \tuplet 3/2 { <b, >4 } <cs >16 <b, >16 \tuplet 3/2 { <e >8 } \break <e >16 <f >8 <e >8 <cs >8 <b, >8 <b, >8 <b, >8 \tuplet 3/2 { <b, >4 } <a, >8 <gs, >8 <ds >8 <a, >8 <a, >8 \tuplet 3/2 { <g, >8 } <c, >16 <g, >8 \tuplet 3/2 { <a, >8 } <c >16 <e >8 <b, >16 <b, >16 <g >16 <d >16 <c >8 <g, >16 <d >8 <cs >8 <d >8 <b, >8 <a, >16 <a, >16 <g, >16 <g, >16 <e >16 <d >8 <ds >16 <d >16 <d >8 <as, >8 <cs >8 \break \tuplet 3/2 { <d >8 } <as, >16 <g, >8 <e, >8 <d'' >8 <fs >16 <ds >16 <d >8 <g, >8 <c >4 <a, >16 <gs, >8 <g,, >8 <g >8 <fs >8 <fs >8 <fs >8 <c' >4. \tuplet 3/2 { <cs'' >8 } \tuplet 3/2 { <b' >8 } <c, >4 \tuplet 3/2 { <gs' >4 } <g >16 <cs >8 \tuplet 3/2 { <d >8 } <g >16 <g >16 <d >8 <d >8 r8 <d,, >8 <d,, >8 <b, >8 \break \tuplet 3/2 { r8 } <e >16 <b' >16 \tuplet 3/2 { <as >8 } <ds'' >8 <g >8 r16 r16 <g, >8 <g, >8 <g >8 <ds >8 <c' >8 <fs' >8 <g >8 r8 <d,, >8 r8 <d,,, >8 <a' >4 \tuplet 3/2 { <a >4 } <g >16 <ds'' >16 <c, >4 <gs' >4 <a,, >16 <b' >8 <d >16 <g >16 \tuplet 3/2 { r8 } <ds >16 <b' >8 r8 <d,, >8 r4 \break <e >8 <a, >8 <d'' >8 <g' >8 r8 <c,, >8 <g, >8 <g >8 \tuplet 3/2 { <b >8 } <c' >16 <g' >8 <b >8 <e >8 r8 <d,, >8 <g, >8 <g, >8 \tuplet 3/2 { <a >4 } <gs >16 <g >16 <g >8 <g >16 <c, >4 <g' >4 \tuplet 3/2 { r8 } \tuplet 3/2 { <e >8 } \tuplet 3/2 { <g >8 } <d >8 <d >8 r8 <a,, >8 <a, >8 <as, >8 \break \tuplet 3/2 { r8 } <e >16 <e >16 \tuplet 3/2 { <as >8 } <b >8 <g >8 <g >8 <e' >8 <g, >8 <e, >8 <a' >8 <g' >8 <g' >8 <g >8 <g >8 <d,, >8 r8 <g, >8 <f'' >8 <a >8 <a >8 <g >16 <g >16 <b,, >4 <cs'' >8 <g >8 <cs'' >8 <e >16 <cs' >16 \tuplet 3/2 { r8 } <d >16 <d >8 <d >8 <d >8 <d,, >4 \break <cs'' >8 <d >8 <cs'' >8 <gs' >8 r8 <g, >8 <g, >4 <b >8 <c' >8 <c' >8 <g >8 <g >8 <a,, >8 <b, >8 <g, >8 <a >4 \tuplet 3/2 { <g >4 } \tuplet 3/2 { <g >4 } 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key g \major

            <d >8 <cs g >8 <g d >8 <d >8 <cs g >8 <g, g d >8 <d g >8 <d g >8 r8 <d g >8 <d >8 <g >8 <g d >8 <d >8 <g >8 <d >8 r8 <c, c a, >8 <b, >8 <b, >8 <b, >8 <b, b, >8 <a, >8 <b, g >8 <d,,, >8 <d gs, >8 <b, >8 <d b, >8 <b, >8 <b, >8 r16 <ds,,, d, d >16 \tuplet 3/2 { <e b, >4 } \break <d,,, >8 <c c, >8 <b, b,,, >16 <ds,,, c, c >16 \tuplet 3/2 { <b, >4 } <b, >8 <b, >8 <c, c >8 <g a, >8 <d,,, >8 <d a, >8 <a, >8 <d g,, g, >8 <g, >8 \tuplet 3/2 { <g, g,, >8 } <as, >16 <d d' >8 <d b, >8 <b, >16 <ds,,, g c, c >16 <c c, >8 <b, >8 <b, c, >8 <b, >8 <c c, c >16 <c, b, b >8 <a, >8 <g g, b, >8 <d,,, >8 <d a, >8 <b, >8 <b, b,, d >8 \tuplet 3/2 { <b, >4 } <b, d d, >16 <d b, >16 \tuplet 3/2 { r8 } \break <d,,, d >16 <e, e b, >8 <e d,,, >8 <c, c g >8 <b, >8 <b, b, >8 <b, >8 \tuplet 3/2 { <c >4 } <a, a >8 <a, g >8 <d,,, >8 <d a, >8 <a, >8 \tuplet 3/2 { <g, g,, g, >8 } <g, g,, d >16 <g, >8 \tuplet 3/2 { <g,, g, d >8 } <a, a, c' c'' c >16 <d >8 <d b, >16 <b, b >16 r16 <ds,,, c, c >16 <c,, c c, >8 <c,, c, c fs, >16 <d >8 <c, c c,, >8 <d a' >8 <c c, >8 <c, c gs, gs, >16 <b,,, >16 <ds,,, g, >16 <g, >16 <g,, >16 <d d' >8 <d d, >16 <d, d >16 <d >8 <d, d a >8 <d b,,, >8 \break \tuplet 3/2 { <d d, >8 } <d, d b b, c >16 r8 <g, e e, e,, >8 <fs >8 <fs a' c, >16 <c, g, g d >16 <d as,,, >8 <c, c g >8 <c c, >4 <c, c as, >16 <as,,, g, >8 <g, g g,, >8 r8 <g g' d, d >8 <b,,, >8 <d, d g >8 <g >4. \tuplet 3/2 { <cs''' a >8 } \tuplet 3/2 { <a b' b'' >8 } <c,, g,,, >4 \tuplet 3/2 { <g,,, >4 } <g >16 r8 \tuplet 3/2 { <fs,,, >8 } <g,,, fs >16 <g g' d'' >16 <g,,, >8 <g,, d >8 <g,,, >8 <d,, >8 <d,, g,,, >8 <d,, b, >8 \break \tuplet 3/2 { <fs,, >8 } <g,,, >16 <fs,,,, fs,,, >16 \tuplet 3/2 { <as'' b >8 } <g,,, >8 <e,, g g' >8 r16 <g,,, >16 <c,, g, >8 <g,,, >8 <c,, g >8 <g,,, >8 <c' >8 <g,,, >8 <fs,,, g,, g >8 <g,,, >8 <d,, >8 <d,, g,,, >8 <d,, >8 <g,,, a >4 \tuplet 3/2 { <g,,, >4 } <fs,,, g b'' >16 <g g' d''' >16 <c,, g,,, >4 <g,,, >4 <e'' >16 <g,,, >8 <fs,,, d >16 <g >16 \tuplet 3/2 { r8 } <g,,, >16 <fs,,, g,, d >8 <g,,, >8 <d,, >8 <d,, g,,, >4 \break <g,,, >8 <d a, >8 <g,,, >8 <e,, >8 <g,,, >8 <fs,,, c,, g g, >8 <g,,, >8 <c,, g >8 \tuplet 3/2 { <c,, b,, >8 } <g,,, >16 <c' g'' >8 <g,,, >8 <fs,,, g,, g >8 <g,,, >8 <d,, >8 <g,,, >8 <d,, a, a,, >8 \tuplet 3/2 { <g,,, >4 } <a >16 <g' >16 <g,,, >8 <g g' >16 <g,,, c,, >4 <g,,, >4 \tuplet 3/2 { <g,,, >8 } \tuplet 3/2 { <fs,,, >8 } \tuplet 3/2 { <e g >8 } <g,,, >8 <g,,, d >8 <g,,, >8 <d,, a, >8 <g,,, >8 <d,, b, >8 \break \tuplet 3/2 { <as,, b,,, >8 } <g,,, >16 <fs,,, >16 \tuplet 3/2 { <as'' >8 } <g,,, >8 <e,,, g g' >8 <g,,, >8 <c,, g, >8 <g,,, >8 <c,, c, g g' >8 <g,,, >8 <c' g'' >8 <g,,, >8 <g,,, g g, g' >8 <g,,, >8 <d,, >8 <g,,, >8 <d,, >8 <g,,, >8 <a >8 <g,,, >8 <fs,,, g >16 <g g' d'' d''' >16 <c,, >4 <c,, g,,, >8 <g >8 <g,,, >8 <fs,,, e >16 <d' d'' g >16 \tuplet 3/2 { <b,, >8 } <g,,, >16 <g,,, d d' >8 <g,,, >8 <d d,, d, a, >8 <d,, a, g,,, >4 \break <g,,, >8 <fs,,, d >8 <g,,, >8 <e,,, b g' >8 <g,,, >8 <g c,, g, >8 <c,, g,,, >4 <g,,, >8 <c' c'' >8 <g,,, >8 <g,,, g, g >8 <g,,, >8 <d,, d, a,, a, >8 <g,,, >8 <d,, >8 <g,,, a >4 \tuplet 3/2 { <g,,, >4 } \tuplet 3/2 { <g g' >4 } <cs >16 

        }
    >>

    \layout {

    }
}