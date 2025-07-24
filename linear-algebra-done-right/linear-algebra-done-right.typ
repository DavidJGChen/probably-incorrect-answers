#import "imports.typ": *

#show: david.with(
  class: "Summer 2025",
  title: [Linear Algebra Done Right Solutions],
  student: "David J Chen",
  date: datetime.today(),
  subproblems: "1.1.a.i",
  collaborators: (),
  bibliography: bibliography("refs.bib"),
)

#set heading(numbering: "1A")

#outline()

= Vector Spaces
#include "vector-spaces.typ"
#pagebreak()

= Finite-Dimensional Vector Spaces
#include "finite-dimensional-vector-spaces.typ"
#pagebreak()

= Linear Maps
#include "linear-maps.typ"
#pagebreak()

= Polynomials
#include "polynomials.typ"
#pagebreak()

= Eigenvalues and Eigenvectors
#include "eigenvalues-and-eigenvectors.typ"
#pagebreak()

= Inner Product Spaces
#include "inner-product-spaces.typ"
#pagebreak()

= Operators on Inner Product Spaces
#include "operators-on-inner-product-spaces.typ"
#pagebreak()

= Operators on Complex Vector Spaces
#include "operators-on-complex-vector-spaces.typ"
#pagebreak()

= Multilinear Algebra and Determinants
#include "multilinear-algebra-and-determinants.typ"