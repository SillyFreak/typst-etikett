#import "/src/lib.typ" as etikett

#set page(height: auto, margin: 5mm, fill: none)

// style thumbnail for light and dark theme
#let theme = sys.inputs.at("theme", default: "light")
#set text(white) if theme == "dark"

#let data = csv("/template/data.csv").slice(1)

#let name-label((first-name, last-name)) = [
  #set align(center+horizon)
  #set text(14pt)
  Hello, my name is\
  #set text(1.4em)
  *#first-name #last-name*
]

#etikett.labels(
  sheet: etikett.sheet(
    paper: "a6",
    margins: 5mm,
    gutters: (x: 2.5mm),
    rows: 6,
    columns: 2,
  ),
  debug: true,

  ..data.map(name-label),
)
