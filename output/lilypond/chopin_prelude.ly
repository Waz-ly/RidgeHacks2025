% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "chopin_prelude"
}

\score {
    \new PianoStaff

    <<

        \new Staff = "solo" \fixed c' {
            \tempo 4 = 97
            \clef "treble"
            \key a \major

            <f >2 \tuplet 3/2 { <b >8 } \tuplet 3/2 { <b >8 } <b, >4 <b >4 <b, >4 <b, >4 <b, >4 <a, >4 <c' >4 <g, >4 <fs, >4 <b, >4 <a, >4 <as, >4 <as, >4 <ds >4 \break <f, >4 <b >4 <as >4 <e >4 <b, >4 <as, >8 \tuplet 3/2 { <as, >4 } <gs, >4 <g, >4 <gs, >4 <b >4 \tuplet 3/2 { <b >4 } <b >8 <as >4 <a >4 <a >4 <g, >4 <g, >4 \break <cs >4 <as >4 <a >4 <a >4 \tuplet 3/2 { <as >4 } <a >16 <gs, >4 <fs, >4 <fs, >4 <f, >4 <b >4 <a >4 <a >4 <a >4 <a >4 <as >4 <fs, >16 <fs, >4 \break <gs, >4 <b >4 <a >4 <a >4 <a >4 <fs, >4 <gs, >4 <fs, >4 <b >4 <b >8 \tuplet 3/2 { <a >4 } <a >4 <a >4 <a >4 <as >4 <b, >4 <b, >4 \break <gs >4 <gs >4 <gs, >4 <gs, >4 <a >4 <b >4 <cs' >4 <c' >4 <f >4 <a >2. 

        }

        \new Staff = "multi" \fixed c {
            \time 4/4
            \clef "treble"
            \key a \major

            <b, b >2 \tuplet 3/2 { <b >8 } \tuplet 3/2 { <b b, >8 } <b g, >4 <b g, >4 <b g, >4 <b, g, >4 <b b, g, >4 <g,, g, >4 <g, c' >4 <c' g, >4 <fs, >4 <b a, >4 <b fs, a, >4 <b a, >4 <fs, b a, >4 <ds fs, >4 \break <fs, c' >4 <c' fs, >4 <b f, >4 <b a, >4 <b a, >4 <ds a, >8 \tuplet 3/2 { <a, b >4 } <f, a, b >4 <f, d a, >4 <gs, gs c' >4 <c' f, gs, >4 \tuplet 3/2 { <e, b >4 } <e, b >8 <b gs, gs >4 <b gs, gs >4 <b gs gs, >4 <g,, g, >4 <g, >4 \break <cs cs' as >4 <as cs cs' g, >4 <a >4 <a g, >4 \tuplet 3/2 { <a g, >4 } <a >16 <a g, >4 <a fs, >4 <a fs, >4 <fs, b >4 <b fs, e, >4 <a >4 <a fs, >4 <a fs, >4 <a e, fs, >4 <a ds, fs, >4 <a fs, >16 <fs, >4 \break <fs, b >4 <b fs, ds, >4 <a >4 <a fs, >4 <a fs, >4 <fs, d, >4 <a fs, >4 <fs, >4 <fs, b >4 <fs, >8 \tuplet 3/2 { <a >4 } <f, a >4 <a f, >4 <a f, >4 <a f, >4 <a b, >4 <a f, >4 \break <gs f, >4 <gs f, >4 <gs e, >4 <gs e, b, >4 <a a, >4 <a, b >4 <d' e, a, >4 <c' e, >4 <e c, >4 <a >2. <a >16 

        }
    >>

    \layout {

    }
}