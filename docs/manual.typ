#import "template.typ" as template: *
#import "/src/lib.typ" as etikett

#let package-meta = toml("/typst.toml").package
#let date = none
// #let date = datetime(year: ..., month: ..., day: ...)

#show: manual(
  title: "Etikett",
  // subtitle: [
  //   A PACKAGE for something
  // ],
  authors: package-meta.authors.map(a => a.split("<").at(0).trim()),
  abstract: [
    _Etikett_ is a template for printing onto label sheets with rectangular grids of labels.
  ],
  url: package-meta.repository,
  version: package-meta.version,
  date: date,
)

// the scope for evaluating expressions and documentation
#let scope = (etikett: etikett)

= Introduction

This template helps you with printing labels, i.e. using sheets of pre-cut adhesive labels that get
either the same or individualized content printed onto them.

= Module reference

#module(
  read("/src/lib.typ"),
  name: "etikett",
  label-prefix: none,
  scope: scope,
)
