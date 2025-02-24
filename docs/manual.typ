#import "template.typ" as template: *
#import "/src/lib.typ" as etykett

#let package-meta = toml("/typst.toml").package
#let date = datetime(year: 2025, month: 2, day: 23)

#show: manual(
  title: "Etykett",
  // subtitle: [
  //   A PACKAGE for something
  // ],
  authors: package-meta.authors.map(a => a.split("<").at(0).trim()),
  abstract: [
    _Etykett_ is a template for printing onto label sheets with rectangular grids of labels.
  ],
  url: package-meta.repository,
  version: package-meta.version,
  date: date,
)

// the scope for evaluating expressions and documentation
#let scope = (etykett: etykett)

= Introduction

This template helps you with printing labels, i.e. using sheets of pre-cut adhesive labels that get either the same or individualized content printed onto them.

Here is a simple example for reading data from a CSV file and putting each entry as a label on a sheet:

- Define the content of each label by a function taking a row from the CSV file.
- The shape of the label sheet is defined by the `sheet` parameter of the central #ref-fn("labels()") function, specified via the #ref-fn("sheet()") function.
- like with a regular grid, multiple cells are specified as multiple parameters to the #ref-fn("labels()") function, usually done by "spreading" an array of cells.

#codly.codly(ranges: ((none, 24), (33, none)), smart-skip: true)
#raw(block: true, lang: "typ", read("/template/main.typ"))

Check out the parameter documentation of #ref-fn("labels()") and #ref-fn("sheet()") to learn about other capabilities of _Etykett_.

#pagebreak()
= Module reference

#module(
  read("/src/lib.typ"),
  name: "etykett",
  label-prefix: none,
  scope: scope,
)
