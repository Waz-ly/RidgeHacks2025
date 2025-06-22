% testing file

\version "2.25.12"
\language "english"

\header {
    title = "auto-scored"
    composer = "?"
    subtitle = "i_wish_you_love"
}

\fixed c'' {
    \time 4/4
    \tempo 4 = 217
    \clef "treble"
    \key a \minor
    
    e4. f4. gs4 ds2 d2. e4 cs4 e1 cs4 d'4 g2 d1 c4 d4 b,4 d1 c4 c4. f2 c1 as,4. a,2 b,1 e4. gs'4. b,4. a,1 e4. f4. g4 f1 \tuplet 3/2 { ds4 } a,4 b,2 e1 cs4 e4. g2 d1 c2 c4 d1 b,4 c4 f4. c1 a,4 as,1 e4. cs4. ds'2 d1 c4. b,4. c4. a2. c4. a2. gs1 b,4 b,2 g2. as'2 fs2 e1 gs,2 a,4. r1 ds4 gs4 g4 e1 e2 a,4. e4. d'1 r1 

    \bar "|."
}