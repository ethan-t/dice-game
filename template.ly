\version "2.18.2"

\header {
  title = "Minuet"
  composer = "Maximilian Stadler"
  tagline = ""
}

upper = {
  \clef treble
  \key d \major
  \time 3/4
  \tempo 4 = 100
  \set Score.doubleRepeatType = #":..:"

  % for measure in treble[0:8]:
  {{!measure}}
  % end
  \bar ":..:"
  % for measure in treble[8:16]:
  {{!measure}}
  % end
  \bar ":|."
}

lower = {
  \clef bass
  \key d \major
  \time 3/4
  \set Score.doubleRepeatType = #":..:"

  % for measure in bass[0:8]:
  {{!measure}}
  % end
  \bar ":..:"
  % for measure in bass[8:16]:
  {{!measure}}
  % end
  \bar ":|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}
