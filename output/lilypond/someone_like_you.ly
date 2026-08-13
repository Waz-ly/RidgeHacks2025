% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "someone_like_you"
}

\score {
    \fixed c' {
        \time 4/4
        \tempo 4 = 67
        \clef "treble"
        \key a \major
        
        <e >1 <cs e >1 <cs fs, cs' >1 <d' >2. <e b' >4 <e >8 <e cs >2. \tuplet 3/2 { <b, >8 } <a, >8 <a, >16 <cs e >4 \tuplet 3/2 { <e e' >4 } <cs >4. <c c >16 \break <a, >16 <a, >16 \tuplet 3/2 { <a,, a, >8 } <fs, fs,, cs' cs, >4 \tuplet 3/2 { <e >4 } \tuplet 3/2 { <cs cs' >4 } \tuplet 3/2 { <cs >4 } <b, >16 <a, >8 \tuplet 3/2 { <a, >8 } <d,,, a,, d, >4 <e >8 <cs gs' >4. <b, fs' >4 <a, >16 \tuplet 3/2 { <a, a,, >4 } <e b' >4 <cs >4. \tuplet 3/2 { <b, >8 } \tuplet 3/2 { <a, a, >4 } r4 <cs >4 <a, >16 <e >4 <b, e >8 <a, e cs >16 <fs, >8 <fs, fs >16 <a, >16 <fs, cs' fs >2 <f, f, >8 \tuplet 3/2 { <fs, >8 } <b, >16 <d,, a,, >16 <a,, a, >16 <b, c >4. <cs fs >4. \break \tuplet 3/2 { <ds ds' >8 } <e >4 <cs d' >4 <a,, e >4 \tuplet 3/2 { <e >4 } <e >16 \tuplet 3/2 { <e e' >8 } <e >8 <e >16 <ds e' >16 \tuplet 3/2 { <gs' cs >4 } <cs gs' e >4. <b, >8 <cs >8 \tuplet 3/2 { <fs, >4 } \tuplet 3/2 { <a, >8 } \tuplet 3/2 { <a, >4 } <fs, fs >4. \tuplet 3/2 { <e, >8 } <fs, >8 <b, >4. <b, >16 <a, a >8 <fs fs, >2 <fs, b, e,, >16 <e,, cs >16 <cs >8 <cs e, fs, e,, >16 <b, fs' >16 <b, >16 <gs, e a,, fs, >16 \tuplet 3/2 { <b, >8 } \tuplet 3/2 { <b, >4 } <b, fs' >16 <gs, fs, >16 <e a, a >8 <a, d,, a,, >8 <a,, a, >8 \tuplet 3/2 { <a, >4 } <b, >8 <b, >16 <a, a' fs, >16 <a, >8 \break <a, >4 <e,, >16 <e,, cs >16 <e,, cs >8 \tuplet 3/2 { <cs >8 } <cs e >8 <as, >16 <b, >16 <fs,, fs, a, >16 <c >16 \tuplet 3/2 { <a, >8 } <as, as, >8 <b, e >16 <c >16 <fs, >8 \tuplet 3/2 { <fs, d,, d, >4 } <a, >16 <b, >16 <a, >16 <b, >4 <cs >2. <a,, >16 <a a' >4 <a a' >8 <gs gs' gs'' >16 <e,, b, >4 <gs gs' gs'' gs' >4 <a a' a, fs,, >16 <fs >2 <fs >8 <fs >4 <a >8 \tuplet 3/2 { <a a' a'' a,, >8 } <a,, e >8 <e e' a, >8 <a gs' >8 <gs gs' >16 \tuplet 3/2 { <gs gs' >8 } <e,, e, >4 <gs' gs >8 <fs >16 <fs >2 \break <a >8 <a >16 <a d, >16 <c' c'' >8 <cs' >8 <cs a,, cs' >4 <a, cs cs' >16 <a, a >8 <cs' cs >16 <c' e,, >4 <e cs' >8 <e a b >8 \tuplet 3/2 { <b b, >8 } <cs' >4 <c' >16 <cs' a a, >16 <cs b a' >16 <fs' fs >8 <fs d, >8 <d, a a' >16 \tuplet 3/2 { <d' a' a >4 } \tuplet 3/2 { <a a' a,, >4 } \tuplet 3/2 { <e >8 } <e e' >4 \tuplet 3/2 { <fs >8 } \tuplet 3/2 { <e gs'' >4 } <e e' >16 \tuplet 3/2 { <f' fs >4 } \tuplet 3/2 { <f f >8 } <fs fs,, fs,,, >16 <fs fs' fs >2 <fs' fs d, >4 \tuplet 3/2 { <d, a a' >8 } \tuplet 3/2 { <gs a' >8 } \tuplet 3/2 { <a a' >8 } <a a' >8 <a,, e >16 \tuplet 3/2 { <e >8 } <e >16 \tuplet 3/2 { <e >4 } \tuplet 3/2 { <e cs >8 } \tuplet 3/2 { <cs >4 } <c e >4 <a, >8 <a, >2 \break <d, >2 

        \bar "|."
    }

    \layout {

    }
}