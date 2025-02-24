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
    gutters: 20pt,
    rows: 4,
    columns: 3,
  ),
  inset: 5pt,
  flipped: true,
  sublabels: (columns: 2),
  debug: true,

  ..range(8).map(test-label),
)
