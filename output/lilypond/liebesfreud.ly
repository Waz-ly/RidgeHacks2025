% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "liebesfreud"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 106
            \clef "treble"
            \key c \major

            r4 <cs' >16 <gs >16 \tuplet 3/2 { <g >4 } <f, >4 <g, >16 <b >4 <c' >8 <b >8 \tuplet 3/2 { <ds >4 } <d >16 <a >4. <b' >16 <b' >16 <b' >8 <f, >16 \tuplet 3/2 { <a >8 } <b >8 <b >16 <b >8 <c >8 <as' >8 <as' >8 <fs' >8 <g >8 <e >16 <e >16 <e >16 <f, >8 <g, >16 <d >16 \tuplet 3/2 { <g >4 } \tuplet 3/2 { <f >4 } \break <fs >16 <ds >4 <as >8 <f >8 <d >16 \tuplet 3/2 { <d >4 } <d >16 <a' >4 \tuplet 3/2 { <b' >8 } <b' >16 <b' >8 <a' >8 <a >8 <f >8 <e >8 <b, >16 <b >16 <c >8 <c >8 <f, >4 <f, >4 \tuplet 3/2 { <g >4 } <g >16 <f, >4 <f, >16 <c >4 <b, >8 <as, >8 \tuplet 3/2 { <d' >4 } <as >16 \break <fs' >4 <c'' >16 <b' >16 <b' >8 <a' >8 <a' >8 <c' >8 <cs >8 <b >8 <b' >8 <fs, >8 <fs >8 <c' >16 <c' >16 \tuplet 3/2 { <e >8 } <fs >16 <fs >16 <g >16 \tuplet 3/2 { <g >4 } <c >4 <g, >16 <gs, >4 \tuplet 3/2 { <c' >4 } <b >16 <d' >16 \tuplet 3/2 { <d' >4 } <d' >16 <gs' >4 <b' >4 <a' >8 <as >8 <c' >8 \break <b, >8 <a, >8 \tuplet 3/2 { <f >4 } <c' >8 \tuplet 3/2 { <c' >4 } \tuplet 3/2 { <f, >4 } <e >2 <c' >16 <c' >16 <b' >16 \tuplet 3/2 { <as >8 } <a >8 \tuplet 3/2 { <f' >4 } <f' >4 <f >8 \tuplet 3/2 { <b, >4 } \tuplet 3/2 { <b, >8 } <b, >16 <as >16 <as >16 <b >16 \tuplet 3/2 { <g, >4 } \tuplet 3/2 { <g, >4 } <g >8 \tuplet 3/2 { <e >4 } <g >4 <c >8 <e >4 \break <a >8 <a, >8 <b >16 <a >4 <c'' >16 \tuplet 3/2 { <g >4 } \tuplet 3/2 { <g >8 } <e'' >16 <c'' >16 <cs'' >8 \tuplet 3/2 { <b >8 } <g, >16 \tuplet 3/2 { <g, >8 } <g, >16 <fs, >16 <b' >16 <as >16 <as >16 <f >2 \tuplet 3/2 { <as, >8 } \tuplet 3/2 { <b, >4 } <d >8 <gs, >8 <a, >16 <g, >4 <f, >16 <gs, >16 \tuplet 3/2 { <a, >4 } <c' >8 \tuplet 3/2 { <c' >8 } <b, >16 <as >16 <a, >4. <a >8 \break \tuplet 3/2 { <b, >4 } <g, >4. <g, >4 <f >2 <g >4 <c' >16 <c' >16 <b >16 \tuplet 3/2 { <as >8 } <a >16 <as, >8 \tuplet 3/2 { <e' >8 } <f >8 <ds >16 <cs >16 <cs >16 <b, >16 \tuplet 3/2 { <as, >4 } <d' >16 <d' >16 <e >16 <d >16 <gs' >16 <a' >8 <e' >16 <e' >16 <e >16 <c >16 <b, >16 <as, >16 <a, >16 \tuplet 3/2 { <g >4 } <f, >16 <a >16 <g >16 \tuplet 3/2 { <fs >8 } <f >16 \tuplet 3/2 { <f >4 } \break \tuplet 3/2 { <a, >8 } \tuplet 3/2 { <gs >4 } \tuplet 3/2 { <f, >8 } <f >16 <a >4 \tuplet 3/2 { <b' >8 } \tuplet 3/2 { <fs >4 } <f, >8 \tuplet 3/2 { <f, >4 } <c >16 \tuplet 3/2 { <g >4 } \tuplet 3/2 { <b >4 } \tuplet 3/2 { <as >8 } \tuplet 3/2 { <a >8 } \tuplet 3/2 { <a, >8 } <f >16 <d >16 <cs >16 <c >16 <b, >4 <d' >16 <c' >16 \tuplet 3/2 { <a >8 } <g >16 <g, >8 <e >16 <c >16 <b, >16 <as, >16 <g >16 \tuplet 3/2 { <g >4 } <g >16 <a >16 <a >16 <a >16 \tuplet 3/2 { <g >8 } \tuplet 3/2 { <f >4 } <e >8 <d' >16 <a >8 \break <b, >8 \tuplet 3/2 { <c >4 } <b >8 <d' >16 \tuplet 3/2 { <c' >4 } \tuplet 3/2 { <c' >4 } <g, >4 \tuplet 3/2 { <g, >4 } 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key c \major

            r4 r16 <cs' >16 \tuplet 3/2 { <g, g >4 } <g, g c, c' e e, >4 <c, e, e g g, >16 <g, g c' >4 <as cs cs' >8 <e e' as >8 \tuplet 3/2 { <fs d' >4 } <d, a, fs d d' >16 <d, d a a, a' >4. <d a a' c'' >16 <a' b' >16 <c'' a' >8 <c'' f c' b, f, >16 \tuplet 3/2 { <f, b, f a' >8 } <b, b a' >8 <a' b, b >16 <b, b f' >8 <f f, b, >8 <b b' >8 <b b' b, >8 <e g' ds' >8 <g >8 <e g g, >16 <g, e g c' e' >16 <e c' e' b' >16 <e e' c' e, >8 <g, g >16 <g, g d >16 \tuplet 3/2 { <g g, >4 } \tuplet 3/2 { <g c' g, c, e e, >4 } \break <c, e, e g e' >16 <e, g, e g >4 <as, as >8 <e e' as >8 <e' f, d d' d, >16 \tuplet 3/2 { <d, d d' >4 } <d, d d' f >16 <d d' a a' >4 \tuplet 3/2 { <d a' c'' >8 } <a' b' >16 <c'' >8 <b, f f, a' >8 <f, b, f b >8 <b, f' b b' >8 <f f, >8 <f b >16 <f b a >16 <b, f b >8 <c' e >8 <e g, >4 <e e, >4 \tuplet 3/2 { <g g, >4 } <g, g >16 <g, c, e e, >4 <c, e, g, c g e >16 <g, g c c' >4 <cs cs' as, as f f' >8 <e as, as >8 \tuplet 3/2 { <d d' >4 } <d, d d' a, f >16 \break <a, d a d' a' >4 <a, d a a' c'' >16 <c'' >16 <c'' >8 <f, a' f >8 <f a' >8 <b, f' b b' >8 <f b, >8 <b, b b' >8 <b b, b' >8 <g, >8 <e g g, e, >8 <g, g c' c'' >16 <b e' e >16 \tuplet 3/2 { <e e, >8 } <e, e g, >16 <g, e g >16 <g >16 \tuplet 3/2 { <g, g >4 } <g, c, c c' e e, >4 <c, e, g, e g c' c >16 <g g, e e, >4 \tuplet 3/2 { <as, as cs' >4 } <cs cs' e >16 <e e, >16 \tuplet 3/2 { <d, d d' >4 } <d, d d' >16 <a, d a a' >4 <c'' >4 <a' b, f >8 <f, b, f b >8 <b, b b' >8 \break <f g, b, >8 <f b >8 \tuplet 3/2 { <f >4 } <c' e >8 \tuplet 3/2 { <e c' g, >4 } \tuplet 3/2 { <g, e >4 } <e, >2 <e' c' >16 <c' >16 <c' b' >16 \tuplet 3/2 { <b' as >8 } <a as' >8 \tuplet 3/2 { <a, f' >4 } <a, >4 <a, f f, >8 \tuplet 3/2 { <b, >4 } \tuplet 3/2 { <b, >8 } <b, b >16 <b, >16 <b, b >16 <b, b >16 \tuplet 3/2 { <g, >4 } \tuplet 3/2 { <g, >4 } <g, g >8 \tuplet 3/2 { <a, e e, >4 } r4 <f, f >8 <f, f >4 \break <d' f b, a >8 <a, e' >8 <a, e' e b' b >16 <a, a >4 <b b' g, >16 \tuplet 3/2 { <e e, >4 } \tuplet 3/2 { <e, e g >8 } <e, e' >16 <e, >16 <e, c' >8 \tuplet 3/2 { <e, g, >8 } <g, g >16 \tuplet 3/2 { <g, >8 } <g, >16 <g, c' >16 <c' b' >16 <b b' >16 <as >16 <a a, f >2 \tuplet 3/2 { <as, as >8 } \tuplet 3/2 { <b, >4 } <b, f g, >8 <b, gs >8 <a a, >16 <g, >4 <g, e c' >16 <gs, >16 \tuplet 3/2 { <a, e, >4 } <e, e c' >8 \tuplet 3/2 { <c' c >8 } <c' b, >16 <as, as >16 <a, f >4. <a, a >8 \break \tuplet 3/2 { <b, >4 } <b, g, >4. <g, d' c c' >4 <c' e >2 <g' >4 <e' >16 <c'' c' >16 <b b' >16 \tuplet 3/2 { <as >8 } <a d, a, >16 <d, a, a,, >8 \tuplet 3/2 { <a, f' e' >8 } <e' f f, >8 <f d d' >16 <cs >16 <cs >16 <b, >16 \tuplet 3/2 { <b, f >4 } <f d' >16 <d' >16 <g, b, >16 <b, f a a' >16 <f gs' gs >16 <g' b, g f >8 <b, gs' c, c,, g, >16 <g, >16 <e >16 <e c >16 <b, >16 <b, as >16 <a, >16 \tuplet 3/2 { <g, g >4 } <g, c' >16 <g a >16 <g >16 \tuplet 3/2 { <fs >8 } <f >16 \tuplet 3/2 { <f f, >4 } \break \tuplet 3/2 { <a, >8 } \tuplet 3/2 { <f a >4 } \tuplet 3/2 { <f, f g, >8 } <f >16 <a >4 \tuplet 3/2 { <b b' >8 } \tuplet 3/2 { <e g, c,, >4 } <g, e >8 \tuplet 3/2 { <g, c' >4 } <c' >16 \tuplet 3/2 { <e, g >4 } \tuplet 3/2 { <e, e b >4 } \tuplet 3/2 { <as >8 } \tuplet 3/2 { <a >8 } \tuplet 3/2 { <a, >8 } <f f' >16 <f d d' >16 <cs cs' >16 <cs c' >16 <b, g, >4 <g, d' >16 <d' b >16 \tuplet 3/2 { <a >8 } <gs gs >16 <g, >8 <e >16 <e c c' >16 <b, c' >16 <as, as >16 <a, a, >16 \tuplet 3/2 { <g >4 } <e g e, >16 <g c' >16 <g c, a >16 <gs as, cs, g, as gs >16 \tuplet 3/2 { <cs, g, as, as g >8 } \tuplet 3/2 { <f f, >4 } <f, f a, d >8 <a, d d' >16 <d a, a >8 \break <b, >8 \tuplet 3/2 { <b, >4 } <b, b >8 <b, b d' >16 \tuplet 3/2 { <c' >4 } \tuplet 3/2 { <c' >4 } <g, >4 \tuplet 3/2 { <g, c, >4 } 

        }
    >>

    \layout {

    }
}