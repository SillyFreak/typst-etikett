#import "template.typ" as template: *
#import "/src/lib.typ" as PACKAGE

#let package-meta = toml("/typst.toml").package
#let date = none
// #let date = datetime(year: ..., month: ..., day: ...)

#show: manual(
  title: "PACKAGE",
  // subtitle: [
  //   A PACKAGE for something
  // ],
  authors: package-meta.authors.map(a => a.split("<").at(0).trim()),
  abstract: [
    A PACKAGE for something
  ],
  url: package-meta.repository,
  version: package-meta.version,
  date: date,
)

// the scope for evaluating expressions and documentation
#let scope = (PACKAGE: PACKAGE)

= Introduction

This is a PACKAGE for something.

= Module reference

#module(
  read("/src/lib.typ"),
  name: "PACKAGE",
  label-prefix: none,
  scope: scope,
)
