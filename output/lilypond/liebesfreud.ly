% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "liebesfreud"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 111
        \clef "treble"
        \key c \major
        
        <g, g >4 \tuplet 3/2 { <c, g c' g, e e, >4 } \tuplet 3/2 { <c, e, e g g, >8 } <g, g c' >4 <as cs cs' f >8 \tuplet 3/2 { <e as >4 } <fs d' >8 \tuplet 3/2 { <cs' a, >8 } \tuplet 3/2 { <d, a, d f d' >8 } <d a a' c'' >2 <f f, b, a' >8 <b a' f' >4 <f b, >8 <b b' >4 <e g' ds' >8 <g >8 \tuplet 3/2 { <e c' e' >8 } <e c' e, >8 <g, g >8 \tuplet 3/2 { <g g, >4 } <g c' g, c, e e, >4 \tuplet 3/2 { <c, e, g, e g >8 } <g, e g e, >4 <as, as f >8 \tuplet 3/2 { <e as >4 } \tuplet 3/2 { <d, d d' >4 } \tuplet 3/2 { <d, d d' f >8 } <d a d' a' >4 <c'' >4 <b, f f, a' >8 <b, f b >8 <b, f f' b >8 <f f, >8 \tuplet 3/2 { <f b >8 } \tuplet 3/2 { <f b b, >4 } <c' e g, >4. \break <e e, >4 <g g, >4 <c, g, e e, >4 \tuplet 3/2 { <c, e, c g, g e >8 } <c g c' g, >4 <as, cs as cs' f f' >8 \tuplet 3/2 { <e as >4 } \tuplet 3/2 { <d d' >4 } \tuplet 3/2 { <d, a, d d' f >8 } <d a d' a' c'' >2 <a' f, f f' >8 <f f' a' >8 <f' b >8 <f b, f, >8 \tuplet 3/2 { <b, b b' >8 } <b b, b' >8 <g, e >8 <e g c' >4 \tuplet 3/2 { <e e, >8 } <e g, g >8 \tuplet 3/2 { <g, g >4 } <c, c c' g, e >4 \tuplet 3/2 { <c, g, e g c' c >8 } <g g, e e, >4 \tuplet 3/2 { <as as, cs' >4 } \tuplet 3/2 { <cs e cs' >8 } \tuplet 3/2 { <e f, d, d d' >8 } \tuplet 3/2 { <d d' >8 } <d d' d, >8 \tuplet 3/2 { <d, d d' >8 } <a a' c'' >2 <b, f a' f, >8 <b, f b >8 <b, b b' >8 <f g, b, >8 <f b >8 \tuplet 3/2 { <f >4 } \break <c' e >8 r1 <a, >2 \tuplet 3/2 { <b, >4 } <b, b >4. <g, >1 <f, f >4. <b, a a, >4. <e, >2. <g, >2 <a a, f >2 <b, >4. \break <g, >2. \tuplet 3/2 { <c c' >8 } r1 <f >1 <g >2. <f f, >4 \tuplet 3/2 { <f a >4 } <f g, >8 <a >4. <e g, >2 <e, e >4. \tuplet 3/2 { <a a, >4 } \tuplet 3/2 { <f >8 } \tuplet 3/2 { <f d d' >8 } \tuplet 3/2 { <cs cs' >8 } \tuplet 3/2 { <c c' >8 } <b, g, >2 \break \tuplet 3/2 { <g, >4 } \tuplet 3/2 { <e >8 } \tuplet 3/2 { <c c' >8 } \tuplet 3/2 { <b, b, >4 } <g >4. \tuplet 3/2 { <as, as cs, g, gs >4 } <f >2 \tuplet 3/2 { <b, >4 } \tuplet 3/2 { <b, b >4 } \tuplet 3/2 { <g, c' >4 } <c' g, >2. 

        \bar "|."
    }

    \layout {

    }
}