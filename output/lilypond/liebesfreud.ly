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
        \tempo 4 = 125
        \clef "treble"
        \key c \major
        
        <g' >4 <g' >4 <c'' >4 <c'' >8 \tuplet 3/2 { <g' >4 } <c' >4. <c' g'' >4 <f'' >4 <e'' >4 <cs'' >2 <a'' >2 \tuplet 3/2 { r4 } <b'' >8 <a'' >4 <a'' f'' >8 <gs'' e'' >8 <a'' >4 <b' f'' >8 <b' e'' >8 <b' >4 \tuplet 3/2 { <g'' b'' >4 } \tuplet 3/2 { <g'' as'' >4 } \tuplet 3/2 { <b'' >4 } <ds'' g'' >8 <fs'' >8 <ds'' >4 <c'' >8 \tuplet 3/2 { <b' e'' >4 } <c'' e'' >4 \break <g' >8 \tuplet 3/2 { <fs' >4 } \tuplet 3/2 { <g' >8 } <g' c'' >4. <c'' >8 \tuplet 3/2 { <g' >4 } <c' >4. \tuplet 3/2 { <c' >4 } <e'' >2 <d'' >2 \tuplet 3/2 { <a'' >8 } \tuplet 3/2 { <a'' >8 } <a'' >4 \tuplet 3/2 { <gs'' >4 } <b'' gs'' >8 <a'' >4 <f'' a'' >4 <a'' >4 <b' >8 <b' >8 <b' >4 <f' b' >8 <f' a' >8 <b' >4 <c'' e' >1 \break r2 \tuplet 3/2 { <g' >8 } \tuplet 3/2 { <g' >8 } <g' >8 \tuplet 3/2 { <g' e' >4 } <c'' >4. <g' >8 <c'' >4 <c' g'' >4 <f'' >4 <e'' >4 <d'' f'' >2 <a'' >8 \tuplet 3/2 { <a'' >8 } <a'' >4 <gs'' >4 <a'' >4 <a'' >8 <e'' gs'' >8 <a'' >4 <b' >8 <b' >8 <b' >4 <b'' >8 <fs'' >8 <b'' >4 <g'' ds'' >8 <fs'' >8 <ds'' g'' >4 <c'' e'' >8 \break <b' e'' >8 <c'' e'' >4 <g' >8 \tuplet 3/2 { <fs' >4 } \tuplet 3/2 { <g' >8 } <g' >8 \tuplet 3/2 { <g' >4 } \tuplet 3/2 { <e' c'' >8 } \tuplet 3/2 { <c'' e' >8 } \tuplet 3/2 { <c'' e' >4 } \tuplet 3/2 { <e'' >4 } <c' >4. \tuplet 3/2 { <c' >4 } <e'' >2 \tuplet 3/2 { <d'' e'' >8 } <d'' >4. \tuplet 3/2 { <a'' >8 } <a'' >4. \tuplet 3/2 { <gs'' >4 } <gs'' b'' >8 <a'' >4 <a'' >8 <e'' >8 <a'' >4 <b' f'' >8 <b' e'' >8 <b' >4 <b' f' >8 <f' a' >8 <f' b' >4 <c'' e' >2 \break <c'' >4 <c' >8 <e'' >4 r1 

        \bar "|."
    }

    \layout {

    }
}