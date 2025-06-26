% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "chopin_sonata3"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 97
        \clef "treble"
        \key a \major
        
        <b, fs' >4. \tuplet 3/2 { <b >4 } <g, b >4 <b g, >4 <b g, >4 <g, >4 <g, >4 <g, >4 <c' g, >4 <g, c' >4 <fs, b >4 <b a, >4 <fs, a, b >4 <a, >4 <fs, a, b >4 <ds fs, >4 <fs, c' >4 <fs, c' >4. <b f, >4 <a, b >4 <a, b >4 <a, >4 <f, a, b >4 <f, a, >4 \break <gs, c' >8 <gs c' >8 <f, c' >4 <b e, >4 <gs, b >4 <gs, >8 <gs b >8 <gs, >4 <g,, b >4 <g, >4 <cs as >4 <cs g, as >4 <a >4 <a g, >4 <a g, >4 <g, a >4 <fs, a >4 <fs, >4 <fs, b >4 <fs, b e, >4 <a >4 <fs, a >4 <a fs, >4 <e, fs, a >4 <ds, a fs,, >4 \tuplet 3/2 { <fs, >8 } <fs, >4 \break <fs, b >4 <fs, b ds, >4 <a >4 <a fs, >4 <a fs, >4 <fs, >4 <fs, a >4 <fs, >4 <b fs, >4 <fs, >8 \tuplet 3/2 { <a >4 } <a f, >4 <a f, >4 <a f, >4 <f, a >4 <a b, >4 <f, a >4 <f, gs >4 <f, gs >4 \tuplet 3/2 { <e, >8 } \tuplet 3/2 { <gs >4 } \tuplet 3/2 { <e, >8 } \tuplet 3/2 { <b >4 } <a, >4 <a, b >4 <d' e, a, >4 <c' e, >4 \break <e g >4 <a >2. <e, a, fs >4 <fs a e, >4 <as ds, >4 <ds, as a, fs >4 <e, >4 <e, a, >4 <b a, e, >4 \tuplet 3/2 { <e, a, >8 } \tuplet 3/2 { <b >4 } <ds, as fs >4 <ds, fs a, >4 <a, >4 <a, >4 <a, >4 <a, >4 <b e, >4 <b e, >4 <ds, fs >1 \break 

        \bar "|."
    }

    \layout {

    }
}