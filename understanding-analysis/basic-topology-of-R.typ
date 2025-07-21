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
  Show that if $K$ is compact and nonempty, then $sup K$ and $inf K$ both exist and are elements of $K$.
]

#solution[

]

#exercise[3.3.2][
  Decide which of the following sets are compact.
  For those that are not compact, show how Definition 3.3.1 breaks down.
  In other words, give an example of a sequence contained in the given set that does not possess a subsequence converging to a limit in the set.

  + $NN$.

  + $QQ inter [0,1]$.

  + The Cantor set.

  + ${1 + 1 slash 2^2 + 1 slash 3^2 + dots.c + 1 slash n^2 mid(:) n in NN}$.

  + ${1, 1 slash 2, 2 slash 3, 3 slash 4, 4 slash 5, dots}$.
]

#solution[

]

#exercise[3.3.3][
  Prove the converse of Theorem 3.3.4 by showing that if a set $K subset.eq RR$ is closed and bounded, then it is compact.
]

#solution[

]

#exercise[3.3.4][
  Assume $K$ is compact and $F$ is closed.
  Decide if the following sets are definitely compact, definitely closed, both, or neither.

  + $K inter F$

  + $overline(F^complement union K^complement)$

  + $K setdiff F = {x in K mid(:) x in.not F}$

  + $overline(K inter F^complement)$
]

#solution[

]

#exercise[3.3.5][
  Decide whether the following propositions are true or false.
  If the claim is valid, supply a short proof, and if the claim is false, provide a counterexample.

  + The arbitrary intersection of compact sets is compact.

  + The arbitrary union of compact sets is compact.

  +
    Let $A$ be arbitrary, and let $K$ be compact.
    Then, the intersection $A inter K$ is compact.

  +
    If $F_1 supset.eq F_2 supset.eq F_3 supset.eq F_4 supset.eq dots.c$ is a nested sequence of nonempty closed sets, then the intersection $inter.big_(n=1)^oo F_n != emptyset$.

]

#solution[

]

#exercise[3.3.6][
  This exercise is meant to illustrate the point made in the opening paragraph to Section 3.3.
  Verify that the following three statements are true if every blank is filled in with the word "finite".
  Which are true if every blank is filled in with the word "compact"?
  Which are true if every blank is filled in with the work "closed"?

  + Every #blank(3em) set has a maximum.

  +
    If $A$ and $B$ are #blank(3em), then $A + B = {a + b mid(:) a in A, b in B}$ is also #blank(3em).

  + 
    If ${A_n mid(:) n in NN}$ is a collection of #blank(3em) sets with the property that every finite subcollection has a nonempty intersection, then $inter.big_(n=1)^oo A_n$ is nonempty as well.
]

#solution[

]

#exercise[3.3.7][
  As some more evidence of the surprising nature of the Cantor set, follow these steps to show that the sum $C + C = {x + y mid(:) x,y in C}$ is equal to the closed interval $[0,2]$.
  (Keep in mind that $C$ has zero length and contains no intervals.)

  Because $C subset.eq [0,1]$, $C+C subset.eq [0,2]$, so we only need to prove that the reverse inclusion $[0,2] subset.eq {x + y mid(:) x,y in C}$.
  Thus, given $s in [0,2]$, we must find two elements $x, y in C$ satisfying $x + y = s$.

  +
    Show that there exist $x_1, y_1 in C_1$ for which $x_1 + y_1 = s$.
    Show in general that, for an arbitrary $n in NN$, we can always find $x_n, y_n in C_n$ for which $x_n + y_n = s$.

  +
    Keeping in mind that the sequences $(x_n)$ and $(y_n)$ do not necessarily converge, show how they can nevertheless be used to produce the desired $x$ and $y$ in $C$ satisfying $x + y = s$.
]

#solution[

]

#exercise[3.3.8][
  Let $K$ and $L$ be nonempty compact sets, and define
  $
    d = inf{abs(x - y) mid(:) x in K "and" y in L}.
  $
  This turns out to be a reasonable definition for the _distance_ between $K$ and $L$.

  +
    If $K$ and $L$ are disjoint, show $d > 0$ and that $d = abs(x_0 - y_0)$ for some $x_0 in K$ and $y_0 in L$.

  +
    Show that it's possible to have $d = 0$ if we assume only that the disjoint sets $K$ and $L$ are closed.
]

#solution[

]

#exercise[3.3.9][
  Follow these steps to prove the final implication in Theorem 3.3.8.

  Assume $K$ satisfies (i) and (ii), and let ${O_lambda mid(:) lambda in Lambda}$ be an open cover for $K$.
  For contradiction, let's assume that no finite subcover exists.
  Let $I_0$ be a closed interval containing $K$.

  +
    Show that there exists a nested sequence of closed intervals $I_0 supset.eq I_1 supset.eq I_2 supset.eq dots.c$ with the property that, for each $n$, $I_n inter K$ cannot be finitely covered and $lim abs(I_n) = 0$.

  + Argue that there exists an $x in K$ such that $x in I_n$ for all $n$.

  +
    Because $x in K$, there must exist an open set $O_(lambda_0)$ from the original collection that contains $x$ as an element.
    Explain how this leads to the desired contradiction.
]

#solution[

]

#exercise[3.3.10][
  Here is an alternate proof to the one given in Exercise 3.3.9 for the final implication in the Heine--Borel Theorem.

  Consider the special case where $K$ is a closed interval.
  Let ${O_lambda mid(:) lambda in Lambda}$ be an open cover for $[a,b]$ and define $S$ to be the set of all $x in [a,b]$ such that $[a,x]$ has a finite subcover from ${O_lambda mid(:) lambda in Lambda}$.

  + Argue that $S$ is nonempty and bounded, and thus $s = sup S$ exists.

  + Now show $s = b$, which implies $[a,b]$ has a finite subcover.

  + Finally, prove the theorem for an arbitrary closed and bounded set $K$.
]

#solution[

]

#exercise[3.3.11][
  Consider each of the sets listed in Exercise 3.3.2.
  For each one that is not compact, find an open cover for which there is no finite subcover.
]

#solution[

]

#exercise[3.3.12][
  Using the concept of open covers (and explicitly avoiding the Bolzano--Weierstrass Theorem), prove that every bounded infinite set has a limit point.
]

#solution[

]

#exercise[3.3.13][
  Let's call a set _clompact_ if it has the property that every _closed_ cover (i.e., a cover consisting of closed sets) admists a finite subcover
  Describe all of the   clompact subsets of $RR$.
]

#solution[

]

== Perfect Sets and Connected Sets

#exercise[3.4.1][
  If $P$ is a perfect set and $K$ is compact, is the intersection $P inter K$ always compact?
  Always perfect?
]

#solution[

]

#exercise[3.4.2][
  Does there exist a perfect set consisting of only rational numbers?
]

#solution[

]

#exercise[3.4.3][
  Review the portion of the proof given in Example 3.4.2 and follow these steps to complete the argument.

  + 
    Because $x in C_1$, argue that there exists an $x_1 in C inter C_1$ with $x_1 != x$ satisfying $abs(x - x_1) <= 1 slash 3$.

  +
    Finish the proof by showing that for each $n in NN$, there exists $x_n in C inter C_n$, different from $x$, satisfying $abs(x - x_n) <= 1 slash 3^n$.
]

#solution[

]

#exercise[3.4.4][
  Repeat the Cantor construction from Section 3.1 starting with the interval $[0,1]$.
  This time, however, remove the open middle _fourth_ from each component.

  + 
    Is the resulting set compact?
    Perfect?

  +
    Using the algorithms from Section 3.1, compute the length and dimension of this Cantor-like set.
]

#solution[

]

#exercise[3.4.5][
  Let $A$ and $B$ be nonempty subsets of $RR$.
  Show that if there exist disjoint open sets $U$ and $V$ with $A subset.eq U$ and $B subset.eq V$, then $A$ and $B$ are separated.
]

#solution[

]

#exercise[3.4.6][
  Prove Theorem 3.4.6.
]

#solution[

]

#exercise[3.4.7][
  A set $E$ is _totally disconnected_ if, given any two distinct points $x, y in E$, there exist separated sets $A$ and $B$ with $x in A$, $y in B$, and $E = A union B$.

  + Show that $QQ$ is totally disconnected.

  + Is the set of irrational numbers totally disconnected?
]

#solution[

]

#exercise[3.4.8][
  Follow these steps to show that the Cantor set is totally disconnected in the sense described in Exercise 3.4.7.

  Let $C = inter.big_(n=0)^oo C_n$, as defined in Section 3.1.

  +
    Given $x, y in C$, with $x < y$, set $epsilon.alt = y - x$.
    For each $n = 0, 1, 2, dots$, the set $C_n$ consists of a finite number of losed intervals.
    Explain why there must exist an $N$ large enough so that it is impossible for $x$ and $y$ both to belong to the same closed interval of $C_N$.

  + Show that $C$ is totally disconnected.
]

#solution[

]

#exercise[3.4.9][
  Let ${r_1, r_2, r_3, dots}$ be an enumeration of the rational numbers, and for each $n in NN$ set $epsilon.alt_n = 1 slash 2^n$.
  Define $O = union.big_(n=1)^oo V_(epsilon.alt_n)(r_n)$, and let $F = O^complement$.

  +
    Argue that $F$ is a closed, nonempty set consisting only of irrational numbers.

  +
    Does $F$ contain any nonempty open intervals?
    Is $F$ totally disconnected?
    (See Exercise 3.4.7 for the definition.)

  +
    Is it possible to know whether $F$ is perfect?
    If not, can we modify the construction to produce a nonempty perfect set of irrational numbers?
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