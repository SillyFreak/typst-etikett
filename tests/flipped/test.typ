#import "/src/lib.typ" as etykett

#let test-label(n) = [
  #set align(center+horizon)
  #set text(20pt)
  #n
]

#etykett.labels(
  sheet: etykett.sheet(
    paper: (width: 300pt, height: 400pt),
    margins: 10pt,
    flipped: true,
    gutters: 20pt,
    rows: 3,
    columns: 4,
  ),
  inset: 5pt,
  debug: true,

  ..range(4).map(test-label),
)
