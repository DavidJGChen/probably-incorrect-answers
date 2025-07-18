#import "@local/david:1.0.1": *

== Discussion: The Cantor Set

No exercises in this section.

== Open and Closed Sets

#exercise[3.2.1][
  +
    Where in the proof of Theorem 3.2.3 part (ii) does the assumption that the collection of open sets be _finite_ get used?

  +
    Give an example of a countable collection of open sets ${O_1, O_2, O_3, dots}$ whose intersection $inter_(n=1)^oo O_n$ is closed, not empty, and not all of $RR$.
]

#solution[

]

#exercise[3.2.2][
  Let
  $
    A = {(-1)^n + 2/n mid(:) n = 1,2,3,dots} quad "and" quad B = {x in QQ mid(:) 0 < x < 1}.
  $
  Answer the following questions for each set:
  + What are the limit points?

  + Is the set open? Closed?

  + Does the set contain any isolated points?

  + Find the closure of the set.
]

#solution[

]

#exercise[3.2.3][
  Decide whether the following sets are open, closed, or neither.
  If a set is not open, find a point in the set for which there is no $epsilon.alt$-neighborhood contained in the set.
  If a set is not closed, find a limit point that is not contained in the set.

  + $QQ$.

  + $NN$.

  + ${x in RR mid(:) x != 0}$.

  + ${1 + 1 slash 4 + 1 slash 9 + dots.c + 1 slash n^2 mid(:) n in NN}$.

  + ${1 + 1 slash 2 + 1 slash 3 + dots.c + 1 slash n mid(:) n in NN}$.
]

#solution[

]

#exercise[3.2.4][
  Let $A$ be nonempty and bounded above so that $s = sup A$ exists.

  + Show that $s in overline(A)$.

  + Can an open set contain its supremum?
]

#solution[

]

#exercise[3.2.5][
  Prove Theorem 3.2.8
]

#solution[

]

#exercise[3.2.6][
  Decide whether the following statements are true or false.
  Provide counterexamples for those that are false, and supply proofs for those that are true.
  
  + 
    An open set that contains every rational number must necessarily be all of $RR$.

  +
    The Nested Interval Property remains true if the term "closed interval" is replaced by "closed set."

  + Every nonempty open set contains a rational number.

  + Every bounded infinite closed set contains a rational number.

  + The Canteor set is closed.
]

#solution[

]

#exercise[3.2.7][
  Given $A subset.eq RR$, let $L$ be the set of all limit points of $A$.

  + Show that the set $L$ is closed.

  +
    Argue that if $x$ is a limit point of $A union L$, then $x$ is a limit point of $A$.
    Use this observation to furnish a proof for Theorem 3.2.12.
]

#solution[

]

#exercise[3.2.8][
  Assume $A$ is an open set and $B$ is a closed set.
  Determine if the following sets are definitely open, definitely closed, both, or neither.

  + $overline(A union B)$

  + $A setdiff B = {x in A mid(:) x in.not B}$

  + $(A^complement union B)^complement$

  + $(A inter B) union (A^complement inter B)$

  + $overline(A)^complement inter overline(A^complement)$
]

#solution[

]

#exercise[3.2.9 (De Morgan's Laws)][
  A proof for De Morgan's Laws in the case of two sets is outlined in Exercise 1.2.5.
  The general argument is similar.

  +
    Given a collection of sets ${E_lambda mid(:) lambda in Lambda}$, show that
    $
      (union.big_(lambda in Lambda) E_lambda)^complement = inter.big_(lambda in Lambda) E_lambda^complement wide "and" wide (inter.big_(lambda in Lambda) E_lambda)^complement = union.big_(lambda in Lambda) E_lambda^complement.
    $
  
  + Now, provide the details for the proof of Theorem 3.2.14.
]

#solution[

]

#exercise[3.2.10][
  Only one of the following three descriptions can be realized.
  Provide an example that illustrates the viable description, and explain why the other two cannot exist.
  #set enum(numbering: "(i)")

  + A countable set contained in $[0,1]$ with no limit points.

  + A countable set contained in $[0,1]$ with no isolated points.

  + A set with an uncountable number of isolated points.
]

#solution[

]

#exercise[3.2.11][
  + Prove that $overline(A union B) = overline(A) union overline(B)$.

  + Does this result about closures extend to infinite unions of sets?
]

#solution[

]

#exercise[3.2.12][
  Let $A$ be an uncountable set and let $B$ be the set of real numbers that divides $A$ into two uncountable sets;
  that is, $s in B$ if both ${x mid(:) x in A "and" x < s}$ and ${x mid(:) x in A "and" x > s}$ are uncountable.
  Show $B$ is nonempty and open.
]

#solution[

]

#exercise[3.2.13][
  Prove that the only sets that are both open and closed are $RR$ and the empty set $emptyset$.
]

#solution[

]

#exercise[3.2.14][
  A dual notion to the closure of a set is the interior of a set.
  The _interior_ of $E$ is denoted $E^circle.small$ and is defined as
  $
    E^circle.small = {x in E mid(:) "there exists" V_epsilon.alt (x) subset.eq E}.
  $
  Results about closures and interiors possess a useful symmetry.
  
  +
    Show that $E$ is closed if and only if $overline(E) = E$.
    Show that $E$ is open if and only if $E^circle.small = E$.

  +
    Show that $overline(E)^complement = (E^complement)^circle.small$, and similarly that $(E^circle.small)^complement = overline(E^complement)$.
]

#solution[

]

#exercise[3.2.15][
  A set $A$ is called an $F_sigma$ set if it can be written as the countable union of closed sets.
  A set $B$ is called a $G_delta$ set if it can be written as the countable intersection of open sets.

  + Show that a closed interval $[a,b]$ is a $G_delta$ set.

  +
    Show that the half-open interval $(a,b]$ is both a $G_delta$ and an $F_sigma$ set.

  +
    Show that $QQ$ is an $F_sigma$ set, and the set of irrationals $II$ forms a $G_delta$ set.
    (We will see in Section 3.5 that $QQ$ is _not_ a $G_delta$ set, nor is $II$ an $F_sigma$ set.)
]

#solution[

]

== Compact Sets

#exercise[3.3.1][

]

#exercise[3.3.2][

]

#exercise[3.3.3][

]

#exercise[3.3.4][

]

#exercise[3.3.5][

]

#exercise[3.3.6][

]

#exercise[3.3.7][

]

#exercise[3.3.8][

]

#exercise[3.3.9][

]

#exercise[3.3.10][

]

#exercise[3.3.11][

]

#exercise[3.3.12][

]

#exercise[3.3.13][

]

== Perfect Sets and Connected Sets

#exercise[3.4.1][

]

#exercise[3.4.2][

]

#exercise[3.4.3][

]

#exercise[3.4.4][

]

#exercise[3.4.5][

]

#exercise[3.4.6][

]

#exercise[3.4.7][

]

#exercise[3.4.8][

]

#exercise[3.4.9][

]

== Baire's Theorem

#exercise[3.5.1][

]

#exercise[3.5.2][

]

#exercise[3.5.3][

]

#exercise[3.5.4][

]

#exercise[3.5.5][

]

#exercise[3.5.6][

]

#exercise[3.5.7][

]

#exercise[3.5.8][

]

#exercise[3.5.9][

]

#exercise[3.5.10][

]

== Epilogue

No exercises in this section.