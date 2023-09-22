```
#let conf(title, doc) = {
  set page(
    paper: "us-letter",
    header: align(
      right + horizon,
      title
    )
  )
  set par(justify: true)
  set text(
    font: "Linux Libertine",
    size: 11pt,
  )

  columns(2, doc)
}

#show: doc => conf(
  [Paper title],
  doc
)
```
#set par(justify: true)

#let conf(
  title: none,
  authors: (),
  abstract: [],
  doc,
) = {
  set align(center)
  text(17pt, title)

  let count = authors.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr, ) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #author.affiliation \
      #link("mailto:" + author.email)
    ]),
  )

  par(justify: false)[
    *Abstract* \
    #abstract
  ]

  set align(left)
  columns(2, doc)
}

#show: doc => conf(
  title: [Towards Improved Modeling],
  authors: (
    (
      name: "Theresa Tungsten",
      affiliation: "Artos Institute",
      email: "tung@artos.edu",
    ),
    (
      name: "Eugene Deklan",
      affiliation: "Honduras State",
      email: "e.deklan@hstate.hn",
    ),
  ),
  abstract: lorem(80),
  doc,
)

= Introduction
#lorem(300)
== Motivation
#lorem(200)
== Problem Statement
#lorem(200)
= Related Work
#lorem(400)

