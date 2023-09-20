#set par(justify: true)
#set heading(numbering: "1.1.1.1")
#set page(
  paper: "us-letter",
  header: align(right)[
    Advanced Styling
  ],
  numbering: "1"
)
#set text(
  font: "Linux Libertine",
  size: 11pt,
)
#align(center, text(17pt)[*Advanced Styling*])

#grid(
  columns: (1fr, 3fr, 1fr, 3fr, 1fr),
  align(center)[],
  align(center)[
    KunLu \
    Southern University of Science and Technology \
    #link("kunlu@qq.com")
  ],
  align(center)[],
  align(center)[
    KunLu \
    Southern University of Science and Technology \
    #link("kunlu@qq.com")
  ],
  align(center)[]
)

#align(center)[
  #set par(justify: false)
  *Abstract* \
  #lorem(64)
]

#show: rest => columns(2, rest)
#show heading: it => [
  #set align(center)
  #set text(12pt, weight: "regular")
  #block(smallcaps(it.body))
]

#show heading.where(
  level: 1
): it => block(width: 100%)[
  #set align(center)
  #set text(12pt, weight: "regular")
  #smallcaps(it.body)
]

#show heading.where(
  level: 2
): it => text(
  size: 11pt,
  weight: "regular",
  style: "italic", 
  it.body + [.],
)

= Introduction
== Motivation
#h(2em)#lorem(300)

== Contribution
#h(2em)#lorem(300)

= Related Work
#h(2em)#lorem(300)




