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
        \tempo 4 = 269
        \clef "treble"
        \key a \major
        
        <e >1 <cs e >1 <cs fs, cs' >1 <d' >1 <e b' >1 <e >2 <e cs >1 \break <b, >4 <a, >2 <a, >4 <cs e >1 <e e' >2. <cs >1 <c c >4 \tuplet 3/2 { <a, >4 } <a, >8 <a,, a, >4. <fs, fs,, cs' cs, >1 <e >2. \break <cs cs' >2 <cs >2. \tuplet 3/2 { <b, >4 } <a, >2 <a, >4 <d,,, a,, d, >1 <e >2 <cs gs' >1 <b, fs' >1 <a, >4 <a, a,, >2. \break <e b' >1 <cs >1 <b, >4. <a, a, >2. r1 <cs >1 <a, >4 <e >1 \break <b, e >2 <a, e cs >4 <fs, >2 <fs, fs >4 <a, >4 <fs, cs' fs >1 <f, f, >4. <fs, >4. <b, >4 <d,, a,, >8 <a,, a, >8 <b, c >1 <cs fs >1 <ds ds' >4. \break <e >1 <cs d' >2. <a,, e >1 <e >2. <e >4 <e e' >4 <e >2 \tuplet 3/2 { <e >4 } \tuplet 3/2 { <ds e' >4 } <gs' cs >2. <cs gs' e >1 \break <b, >2 <cs >2 <fs, >2. <a, >4 <a, >2. <fs, fs >1 <e, >4. <fs, >2 <b, >1 \tuplet 3/2 { <b, >4 } <a, a >4. \break <fs fs, >1 <fs, b, e,, >4 <e,, cs >4 <cs >2 <cs e, fs, e,, >4 <b, fs' >4 <b, >4 <gs, e a,, fs, >4 <b, >4. <b, >2. <b, fs' >4 <gs, fs, >4 <e a, a >2 <a, d,, a,, >2 <a,, a, >2 \break <a, >2 <b, >2 <b, >4 <a, a' fs, >4 <a, >2 <a, >1 <e,, >4 <e,, cs >4 <e,, cs >2 <cs >4. <cs e >4. <as, >4 <b, >4 <fs,, fs, a, >4 \tuplet 3/2 { <c >4 } <a, >4 <as, as, >2 \break <b, e >4 <c >4 <fs, >2 <fs, d,, d, >2. <a, >4 <b, >4 <a, >4 <b, >1 <cs >1 <a,, >4 <a a' >1 <a a' >2 \break <gs gs' gs'' >4 <e,, b, >1 <gs gs' gs'' gs' >1 <a a' a, fs,, >4 <fs >1 <fs >2 <fs >1 <a >2 <a a' a'' a,, >4. <a,, e >4. \break <e e' a, >2 <a gs' >2 <gs gs' >4 <gs gs' >4. <e,, e, >2. <gs' gs >2 <fs >4 <fs >1 <a >2 <a >4 <a d, >4 <c' c'' >2 <cs' >2 \break <cs a,, cs' >1 <a, cs cs' >8 <a, a >2 <cs' cs >4 <c' e,, >1 <e cs' >2 <e a b >2 <b b, >4. <cs' >2. <c' >4 <cs' a a, >4 <cs b a' >4 <fs' fs >2 \break <fs d, >2 <d, a a' >4 <d' a' a >2. <a a' a,, >2. <e >4. <e e' >1 <fs >4 <e gs'' >2 \tuplet 3/2 { <e e' >4 } <f' fs >2. <f f >4. \tuplet 3/2 { <fs fs,, fs,,, >4 } <fs fs' fs >1 \break <fs' fs d, >1 <d, a a' >4. <gs a' >4. <a a' >4. <a a' >2 <a,, e >4 <e >4 <e >4 <e >2. <e cs >4. <cs >2. <c e >2. \break <a, >2 <a, >1 <d, >1 

        \bar "|."
    }

    \layout {

    }
}