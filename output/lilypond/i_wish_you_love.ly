% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "i_wish_you_love"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 106
            \clef "treble"
            \key g \major

            <f >16 <c >16 <e >4 \tuplet 3/2 { <f >8 } \tuplet 3/2 { <e >8 } <fs >8 <e >4 <cs >8 <d >8 <cs >16 <d >8 \tuplet 3/2 { <d >4 } <d >16 <c >16 <e >4 <d >8 \tuplet 3/2 { <e, >8 } \tuplet 3/2 { <a, >4 } <b, >8 \tuplet 3/2 { <cs >8 } <cs >16 \tuplet 3/2 { <d >4 } \tuplet 3/2 { <fs >8 } \tuplet 3/2 { <d >4 } <d >8 <d >16 \tuplet 3/2 { <d >8 } \tuplet 3/2 { <d >8 } <d >16 <d >8 <b, >8 <d >8 \tuplet 3/2 { <d >4 } <d >8 \break <cs >4 <g, >16 \tuplet 3/2 { <g, >8 } <c >8 <c >8 <c >8 <c >16 \tuplet 3/2 { <e >8 } \tuplet 3/2 { <c >8 } <c >16 \tuplet 3/2 { <c >4 } <c >8 <cs >8 <b, >8 <as, >8 <c >8 <a, >8 <b, >8 <as, >8 \tuplet 3/2 { <f, >8 } \tuplet 3/2 { <a, >4 } <e >4 <d >16 <cs >8 <b, >16 <b, >8 <a, >4 <a, >8 \tuplet 3/2 { <a, >8 } <a, >16 <a, >16 <as, >16 <as, >8 \tuplet 3/2 { <a, >8 } <gs, >16 \break <a,, >8 <a, >8 <b, >8 <b, >16 <a, >16 <g, >8 <e >4 <f >16 <e >8 <e >16 <g >8 <e >4 <e >16 <e >8 <e >8 <e >8 <c >8 <d >8 <a,, >8 <a,, >8 <gs,, >8 <e, >8 <e,, >8 \tuplet 3/2 { <e,, >8 } <d >8 \tuplet 3/2 { <d >4 } <ds >16 \tuplet 3/2 { <g >8 } <g >16 \tuplet 3/2 { <c >8 } <d >8 <d >8 <d >8 <cs >8 <c >8 \break <d >8 \tuplet 3/2 { <cs >8 } <d >16 <d >8 <d >4 <cs >16 \tuplet 3/2 { <cs >8 } <c >8 <c >8 <c >8 <e,, >16 \tuplet 3/2 { <f >8 } <ds >16 <c, >8 \tuplet 3/2 { <c >8 } <c >8 <c >8 <as,, >8 <as, >8 <c >8 <d,, >8 \tuplet 3/2 { <b, >8 } <b, >16 <b, >4 <as,, >16 <b, >8 \tuplet 3/2 { <e >4 } <d >16 <cs >8 <e >8 <e >16 \tuplet 3/2 { <d >4 } <d >8 <d >8 <d >8 <d >8 \break \tuplet 3/2 { <d >8 } <d >16 \tuplet 3/2 { <d >4 } <ds >8 <e >4 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key g \major

            r16 r16 <e >4 \tuplet 3/2 { <f >8 } \tuplet 3/2 { <f >8 } <fs >8 <e >4 <d c >8 <d >8 <cs >16 <d >8 \tuplet 3/2 { <c >4 } <d >16 <d >16 <e >4 <e e, b, >8 \tuplet 3/2 { <ds d, d,, >8 } \tuplet 3/2 { <g,, a, >4 } <b, g,,, g,, >8 \tuplet 3/2 { <g,, cs >8 } <fs,, cs >16 \tuplet 3/2 { <d d, >4 } \tuplet 3/2 { <fs >8 } \tuplet 3/2 { <g b, g,, >4 } <d >8 <d >16 \tuplet 3/2 { <cs >8 } \tuplet 3/2 { <d g,, >8 } <g,, d >16 <d, d g,, >8 <g,, b, g,,, >8 <d >8 \tuplet 3/2 { <a,, >4 } <d >8 \break <d d c >4 <d g, >16 \tuplet 3/2 { <g, >8 } <c >8 <c >8 <c >8 <c >16 \tuplet 3/2 { <e e' >8 } \tuplet 3/2 { <f c >8 } <c >16 \tuplet 3/2 { <c >4 } <c >8 <c a,, >8 <a,, >8 <c a, >8 <c >8 <a, >8 <b, >8 <b, g,,, g,, >8 \tuplet 3/2 { <d,, d, a, >8 } \tuplet 3/2 { <a, >4 } <e >4 <d d >16 <d g,, >8 <g,, >16 <b, >8 <a, >4 <a, >8 \tuplet 3/2 { <a, >8 } <a, >16 <a, g,, >16 <g,, a, >16 <a, b, >8 \tuplet 3/2 { <a, a, >8 } <a, >16 \break <a, a,, >8 <a,, a, >8 <c >8 <g, c >16 <c >16 <g, >8 <e >4 <e f >16 <f cs >8 <e >16 <g >8 <d,, e >4 <d,, e >16 <d,, e c >8 <e f,, >8 <e d,, >8 <d,, c a, a,, >8 <d,, ds c >8 <a,, a, g,, >8 <g,, g,,, >8 <g,, >8 <g,, e >8 <e g,, b, >8 \tuplet 3/2 { <f,, b, >8 } <d,, g,, cs >8 \tuplet 3/2 { <b, d >4 } <d >16 \tuplet 3/2 { <d as,,, g >8 } <g c, >16 \tuplet 3/2 { <c,, c >8 } <c,, d >8 <d d, >8 <d g,, >8 <g,, >8 <g,, c >8 \break <g,, d >8 \tuplet 3/2 { <c, c d, b,,, >8 } <c,, d, d >16 <d >8 <d a,, a,,, d >4 <gs,,, a,, f,, >16 \tuplet 3/2 { <e,, cs >8 } <a,,, a,, c >8 <c ds,, >8 <ds,, c >8 <ds,, >16 \tuplet 3/2 { <f >8 } <f >16 <d,, >8 \tuplet 3/2 { <d,, c >8 } <c f,, f, >8 <c >8 <a,, >8 <a, d,, >8 <d,, as, c >8 <a, d,, d, >8 \tuplet 3/2 { <d,, as, e,, >8 } <b, >16 <b, g,, >4 <b, >16 <b, >8 \tuplet 3/2 { <g,, e e' >4 } <g,,, g,, d >16 <d,, >8 <e >8 <e >16 \tuplet 3/2 { <g,, c,, d >4 } <d as, g,, >8 <d g,, >8 <d g,, >8 <g,, >8 \break \tuplet 3/2 { <g,, d >8 } <cs cs f >16 \tuplet 3/2 { <d >4 } <d c,, >8 <c,, g g,, >4 <fs,, >16 

        }
    >>

    \layout {

    }
}