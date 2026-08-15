% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "orion"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 72
            \clef "treble"
            \key fs \major

            <e >16 <f >16 \tuplet 3/2 { <fs' >8 } \tuplet 3/2 { <gs >8 } <gs >16 \tuplet 3/2 { <gs >8 } <as >16 <fs >8 <gs' >16 <a' >16 <a' >16 <g' >8 <b,, >8 \tuplet 3/2 { <b,, >8 } <c, >16 <f >8 <f >16 <fs >8 <fs >16 <gs >16 <f >16 <b >16 <a' >4 <f >4 <fs >8 \tuplet 3/2 { <gs' >8 } <gs' >16 <gs >16 \tuplet 3/2 { <as >8 } <fs >16 <fs >16 <ds >16 <d >16 <ds >16 <ds >16 <ds >8 \tuplet 3/2 { <b,, >8 } <as >16 <b >16 \tuplet 3/2 { <b >8 } <as >8 <gs >16 <gs >16 <g >16 <fs >16 <fs >8 <gs >16 \break <gs >16 <gs >16 <as >4 \tuplet 3/2 { <fs >8 } <g >16 \tuplet 3/2 { <d, >8 } <e, >16 <fs >8 <gs >16 <gs >16 <gs >16 \tuplet 3/2 { <as >8 } <fs >16 <fs >16 <ds >16 <d >16 <ds >16 <ds >8 <as, >8 <b,, >8 <e >16 <g' >16 \tuplet 3/2 { <gs' >4 } <gs >8 <d' >16 <ds' >16 <ds' >16 <d' >8 <d' >16 \tuplet 3/2 { <d' >8 } <a >16 <as >16 <gs >16 <as >16 <gs' >16 <fs' >16 <g' >16 <g' >16 <g' >16 <g' >8 <cs >8 <e >8 \tuplet 3/2 { <ds >4 } <fs >16 <g >16 <a >16 <as >8 \break <as >16 <a >16 <as >8 <gs' >8 \tuplet 3/2 { <fs' >4 } <gs >8 <gs >8 <gs >8 <gs >8 <gs >16 \tuplet 3/2 { <a >8 } <d >8 <d' >8 <gs' >8 <b' >16 <fs >16 <fs >16 <fs >4 <fs >8 <gs >16 <g >16 <fs >8 <fs >8 <fs,, >16 <cs,, >16 <gs >16 <gs >16 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key fs \major

            r16 <e f' >16 \tuplet 3/2 { <fs fs' >8 } \tuplet 3/2 { <gs >8 } <gs >16 \tuplet 3/2 { <gs gs' >8 } <as as' >16 <fs >8 <ds >16 <ds >16 <ds cs >16 <b,, ds b,,, >8 <b,, >8 \tuplet 3/2 { <b,, >8 } <b,, b,,, >16 <f >8 <f cs, >16 <fs >8 <fs fs' >16 <gs gs' >16 <f >16 <f f' >16 <as,, cs gs, >4 <as,, >4 <fs >8 \tuplet 3/2 { <gs gs' >8 } <gs gs' ds, >16 <gs gs' >16 \tuplet 3/2 { <as as' >8 } <fs >16 <fs >16 <ds fs b,, b, >16 <d d' >16 <ds ds' >16 <ds >16 <ds b,, b,,, >8 \tuplet 3/2 { <b,, b,,, >8 } <as >16 <b >16 \tuplet 3/2 { <b b' >8 } <as >8 <as d, >16 <gs, gs >16 <gs gs, d, >16 <fs >16 <fs >8 <gs gs' >16 \break <gs >16 <gs gs' >16 <as >4 \tuplet 3/2 { <ds, cs fs >8 } <ds, fs g'' >16 \tuplet 3/2 { <d, >8 } <d, >16 <fs >8 <gs >16 <gs >16 <gs >16 \tuplet 3/2 { <a >8 } <fs >16 <fs >16 <ds ds' ds >16 <ds ds' d >16 <ds e' >16 <ds b,, b,,, >8 <b,, as, >8 <b,, >8 <d e e' >16 <f' f >16 \tuplet 3/2 { <fs fs' >4 } <gs >8 <a cs' >16 <ds' >16 <ds' gs, >16 <d' >8 <d' >16 \tuplet 3/2 { <d' >8 } <a d, >16 <as >16 <gs d, gs, >16 <d, as >16 <a gs' gs >16 <g' fs fs' >16 <f fs' >16 <f f' fs g' >16 <fs fs' f f' >16 <fs ds, >8 <fs cs, cs cs' >8 <cs, cs fs >8 \tuplet 3/2 { <ds >4 } <fs fs, >16 <fs, fs b,, >16 <a >16 <as as' >8 \break <as >16 <a a' >16 <as as' >8 <gs gs' >8 \tuplet 3/2 { <fs fs' >4 } <gs gs' >8 <gs gs' >8 <gs gs' >8 <gs gs' >8 <gs >16 \tuplet 3/2 { <b,, >8 } <b,, d' d >8 <b,, cs' >8 <g' gs >8 <g b b'' >16 <fs >16 <fs >16 <fs fs, >4 <fs, fs >8 <fs, fs as >16 <fs, fs >16 <fs fs, >8 <fs fs, >8 r16 <e,, e,,, c,, >16 <e,, >16 <ds,, gs,, cs, >16 <ds,,, as,, g,, >16 

        }
    >>

    \layout {

    }
}