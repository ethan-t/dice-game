\version "2.18.2"

\header {
  title = "Minuet"
  composer = "Maximilian Stadler"
}

upper = \relative c'' {
  \clef treble
  \key d \major
  \time 3/4

  % for measure in treble:
  measure
  % end
}

lower = \relative c {
  \clef bass
  \key d \major
  \time 3/4

  % for measure in bass:
  measure
  % end
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
}
