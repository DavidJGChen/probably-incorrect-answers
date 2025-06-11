#import "@local/david:1.0.1": *

#show: david.with(
  class: "Self-study",
  title: [Understanding Analysis Solutions],
  student: "David J Chen",
  date: datetime.today(),
  subproblems: "1.1.a.i",
  collaborators: (),
  bibliography: bibliography("refs.bib"),
)

= The Real Numbers

== Discussion: The Irrationality of $sqrt(2)$

== Some Preliminaries

#exercise[1.2.1][
  +
    Prove that $sqrt(3)$ is irrational.
    Does a similar argument work to show $sqrt(6)$ is irrational?
  +
    Where does the proof of Theorem 1.1.1 break down if we try to use it to prove $sqrt(4)$ is irrational?
]
#solution[
]

#exercise[1.2.2][
  Show that there is no rational number $r$ satisfying $2^r = 3$.
]

#exercise[1.2.3][
  Decide which of the following represent true statements about the nature of sets.
  For any that are false, provide a specific example where the statement in question does not hold.
  +
    If $A_1 supset.eq A_2 supset.eq A_3 supset.eq A_4 dots$ are all sets containing an infinite number of elements, then the interesection $inter.big_(n=1)^oo A_n$ is infinite as well.
  +
    If $A_1 supset.eq A_2 supset.eq A_3 supset.eq A_4 dots$ are all finite, nonempty sets of real numbers, then the intersection $inter.big_(n=1)^oo A_n$ is finite and nonempty.
  +
    $A inter (B union C) = (A inter B) union C$.
  +
    $A inter (B inter C) = (A inter B) inter C$.
  +
    $A inter (B union C) = (A inter B) union (A inter C)$.
]

#exercise[1.2.4][
  Produce an infinite collection of sets $A_1, A_2, A_3, dots$ with the property that every $A_i$ has an infinite number of elements, $A_i inter A_j = emptyset$ for all $i != j$, and $union.big_(i=1)^oo A_i = NN$.
]

#exercise[1.2.5 (De Morgan's Laws)][
  Let $A$ and $B$ be subsets of $RR$.
  +
    If $x in (A union B)^complement$, explain why $x in A^complement union B^complement$.
    This shows that $(A inter B)^complement subset.eq A^complement union B^complement$.
  +
    Prove the reverse inclusion $(A inter B)^complement supset.eq A^complement union B^complement$, and conclude that $(A inter B)^complement = A^complement union B^complement$.
  +
    Show $(A union B)^complement = A^complement union B^complement$ by demonstrating inclusion both ways.
]

#exercise[1.2.6][
  +
    Verify the triangle inequality in the special case where $a$ and $b$ have the same sign.
  +
    Find an efficient proof for all the cases at once by first demonstrating $(a+b)^2 <= (abs(a) + abs(b))^2$.
  +
    Prove $abs(a - b) <= abs(a - c) + abs(c - d) + abs(d - b)$ for all $a$, $b$, $c$, and $d$.
  +
    Prove $abs(abs(a) - abs(b)) <= abs(a - b)$. (The unremarkable identity $a = a - b + b$ may be useful.)
]

#exercise[1.2.7][
  Given a function $f$ and a subset $A$ of its domain, let $f(A)$ represent the range of $f$ over the set $A$; that is, $f(A) = {f(x): x in A}$.
  +
    Let $f(x) = x^2$. If $A = [0,2]$ (the closed interval ${x in RR: 0 <= x <= 2}$) and $B = [1,4]$, find $f(A)$ and $f(B)$.
    Does $f(A inter B) = f(A) inter f(B)$ in this case? Does $f(A union B) = f(A) union f(B)$?
  +
    Find two sets $A$ and $B$ for which $f(A inter B) != f(A) inter f(B)$.
  +
    Show that, for an arbitrary function $g : RR -> RR$, it is always true that $g(A inter B) subset.eq g(A) inter g(B)$ for all sets $A, B subset.eq RR$.
  +
    Form and prove a conjecture about the relationship between $g(A union B)$ and $g(A) union g(B)$ for an arbitrary function $g$.
]

#exercise[1.2.8][
  Here are two important definitions related to a function $f: A -> B$.
  The function $f$ is _one-to-one_ (1-1) if $a_1 != a_2$ in $A$ implies that $f(a_1) != f(a_2)$ in $B$.
  The function $f$ is _onto_ if, given any $b in B$, it is possible to find an element $a in A$ for which $f(a) = b$.

  Give an example of each or state that the request is impossible:
  + $f: NN -> NN$ that is 1-1 but not onto.
  + $f: NN -> NN$ that is onto but not 1-1.
  + $f: NN -> ZZ$ that is 1-1 and onto.
]

#exercise[1.2.9][
  Given a function $f: D -> RR$ and a subset $B subset.eq RR$, let $f^(-1)(B)$ be the set of all points from the domain $D$ that get mapped into $B$; that is, $f^(-1)(B) = {x in D : f(x) in B}$.
  This set is called the _preimage_ of $B$.
  +
    Let $f(x) = x^2$. If $A$ is the closed interval $[0,4]$ and $B$ is the closed interval $[-1,1]$, find $f^(-1)(A)$ and $f^(-1)(B)$.
    Does $f^(-1)(A inter B) = f^(-1)(A) inter f^(-1)(B)$ in this case?
    Does $f^(-1)(A union B) = f^(-1)(A) union f^(-1)(B)$?
  +
    The good behavior of preimages demonstrated in (a) is completely general.
    Show that for an arbitrary function $g: RR -> RR$, it is always true that $g^(-1)(A inter B) = g^(-1)(A) inter g^(-1)(B)$ and $g^(-1)(A union B) = g^(-1)(A) union g^(-1)(B)$ for all sets $A, B subset.eq RR$.
]

#exercise[1.2.10][
  Decide which of the following are true statements. Provide a short justification for those that are valid and a counterexample for those that are not:
  +
    Two real numbers satisfy $a < b$ if and only if $a < b + epsilon.alt$ for every $epsilon.alt > 0$.
  +
    Two real numbers satisfy $a < b$ if $a < b + epsilon.alt$ for every $epsilon.alt > 0$.
  +
    Two real numbers satisfy $a <= b$ if and only if $a < b + epsilon.alt$ for every $epsilon.alt > 0$.
]

#exercise[1.2.11][
  Form the logical negation of each claim.
  One trivial way to do this is to simply add "It is not the case that..." in front of each assertion.
  To make this interesting, fashion the negation into a positive statement that avoids using the word "not" altogether. In each case, make an intuitive guess as to whether the claim or its negation is the true statement.
  +
    For all real numbers satisfying $a < b$, there exists an $n in NN$ such that $a + 1 slash n < b$.
  +
    There exists a real number $x > 0$ such that $x < 1 slash n$ for all $n in NN$.
  +
    Between every two distinct real numbers there is a rational number.
]

#exercise[1.2.12][
  Let $y_1 = 6$, and for each $n in NN$ define $y_(n+1) = (2y_n - 6) slash 3$.
  +
    Use induction to prove that the sequence satisfies $y_n > -6$ for all $n in NN$.
  +
    Use another induction argument to show the sequence $(y_1, y_2, y_3,dots)$ is decreasing.
]

#exercise[1.2.13][
  For this exercise, assume Exercise 1.2.5 has been successfully completed.
  +
    Show how induction can be used to conclude that
    $
      (A_1 union A_2 union dots.c union A_n)^complement = A_1^complement inter A_2^complement inter dots.c inter A_n^complement
    $
    for any finite $n in NN$.
  +
    It is tempting to appeal to induction to conclude
    $
      (union.big_(i=1)^oo A_i)^complement = inter.big_(i=1)^oo A_i^complement,
    $
    but induction does not apply here.
    Induction is used to prove that a particular statement holds for every value of $n in NN$, but this does not imply the validity of the infinite case.
    To illustrate this point, find an example of a collection of sets $B_1, B_2, B_3, dots$ where $inter.big_(i=1)^n B_i != emptyset$ is true for every $n in NN$, but $inter.big_(i=1)^oo B_i != emptyset$ fails.
  +
    Nevertheless, the infinite version of De Morgan's Law stated in (b) is a valid statement. Provide a proof that does not use induction.
]

== The Axiom of Completeness

#exercise[1.3.1][
  +
    Write a formal definition in the style of Definition 1.3.2 or the _infimum_ or _greatest lower bound_ of a set.
  +
    Now, state and prove a version of Lemma 1.3.8 for greatest lower bounds.
]

#exercise[1.3.2][
  Give an example of each of the following, or state that the request is impossible.
  +
    A set $B$ with $inf B >= sup B$.
  +
    A finite set that contains its infimum but not its supremum.
  +
    A bounded subset of $QQ$ that contains its supremum but not its infimum.
]

#exercise[1.3.3][
  +
    Let $A$ be nonempty and bounded below, and define $B = {b in RR : b "is a lower bound for" A}$. Show that $sup B = inf A$.
  +
    Use (a) to explain why there is no need to assert that greatest lower bounds exist as part of the Axiom of Completeness.
]

#exercise[1.3.4][
  Let $A_1, A_2, A_3, dots$ be a collection of nonempty sets, each of which is bounded above.
  +
    Find a formula for $sup(A_1 union A_2)$. Extend this to $sup(union.big_(k=1)^n A_k)$.
  +
    Consider $sup(union.big_(k=1)^oo A_k)$. Does the formula in (a) extend to the infinite case?
]

#exercise[1.3.5][
  As in Example 1.3.7, let $A in RR$ be nonempty and bounded above, and let $c in RR$.
  This time define the set $c A = {c a : a in A}$.
  +
    If $c >= 0$, show that $sup(c A) = c sup A$.
  +
    Postulate a similar type of statement for $sup(c A)$ for the case $c < 0$.
]

#exercise[1.3.6][
  Given sets $A$ and $B$, define $A + B = {a + b : a in A "and" b in B}$.
  Follow these steps to prove that if $A$ and $B$ are nonempty and bounded above then $sup (A + B) = sup A + sup B$.
  +
    Let $s = sup A$ and $t = sup B$. Show $s + t$ is an pper bound for $A + B$.
  +
    Now let $u$ be an arbitrary upper bound for $A + B$, and temporarily fix $a in A$. Show $t <= u - a$.
  +
    Finally, show $sup (A + B) = s + t$.
  +
    Construct another proof of this same fact using Lemma 1.3.8.
]

#exercise[1.3.7][
  Prove that if $a$ is an upper bound for $A$, and if $a$ is also an element of $A$, then it must be that $a = sup(A)$.
]

#exercise[1.3.8][
  Compute, without proofs, the suprema and infima (if they exist) of the following sets:
  +
    ${m slash n : m, n in NN "with" m < n}$.
  +
    ${(-1)^m slash n : m, n in NN}$.
  +
    ${n slash (3n+1) : n in NN}$.
  +
    ${m slash (m + n) : m, n in NN}$.
]

#exercise[1.3.9][
  +
    If $sup A < sup B$, show that there exists an element $b in B$ that is an upper bound for $A$.
  +
    Give an example to show that this is not always the case if we only assume $sup A <= sup B$.
]

#exercise[1.3.10 (Cut Property)][
  The _Cut Property_ of the real numbers is the following:

  If $A$ and $B$ are nonempty, disjoint sets with $A union B = RR$ and $a < b$ for all $a in A$ and $b in B$, then there exists $c in RR$ such that $x <= c$ whenever $x in A$ and $x >= c$ whenever $x in B$.

  +
    Use the Axiom of Completeness to prove the Cut Property.
  +
    Show that the implication goes the other way; that is, assume $RR$ possesses the Cut Property and let $E$ be a nonempty set that is bounded above.
    Prove $sup E$ exists.
  +
    The punchline of parts (a) and (b) is that the Cut Property could be used in place of the Axiom of Completeness as the fundamental axiom that distinguishes the real numbers from the rational numbers.
    To drive this point home, give a concrete example showing that the Cut Property is not a valid statement when $RR$ is replaced by $QQ$.
]

#exercise[1.3.11][
  Decide if the following statements about suprema and infima are true or false.
  Give a short proof for those that are true.
  For any that are false, supply an example where the claim in question does not appear to hold.
  +
    If $A$ and $B$ are nonempty, bounded, and satisfy $A subset.eq B$, then $sup A <= sup B$.
  +
    If $sup A < inf B$ for sets $A$ and $B$, then there exists a $c in RR$ satisfying $a < c < b$ for all $a in A$ and $b in B$.
  +
    If there exists a $c in RR$ satisfying $a < c < b$ for all $a in A$ and $b in B$, then $sup A < inf B$.
]

== Consequences of Completeness

#exercise[1.4.1][
  Recall that $II$ stands for the set of irrational numbers.
  +
    Show that if $a, b in QQ$, then $a b$ and $a + b$ are elements of $QQ$ as well.
  +
    Show that if $a in QQ$ and $t in II$, then $a + t in II$ and $a t in II$ as long as $a != 0$.
  +
    Part (a) can be summarized by saying that $QQ$ is closed under addition and multiplication.
    Is $II$ closed under addition and multiplication?
    Given two irrational numbers $s$ and $t$, what can we say about $s + t$ and $s t$?
]

#exercise[1.4.2][
  Let $A subset.eq RR$ be nonempty and bounded above, and let $s in RR$ have the property that for all $n in NN$, $s + 1/n$ is an upper bound for $A$ and $s - 1/n$ is not an upper bound for $A$.
  Show $s = sup A$.
]

#exercise[1.4.3][
  Prove that $inter.big_(n=1)^oo (0, 1 slash n) = emptyset$.
  Notice that this demonstrates that the intervals in the Nested Interval Property must be closed for the conclusion of the theorem to hold.
]

#exercise[1.4.4][
  Let $a < b$ be real numbers #TODO[finish this]
]

== Cardinality

== Cantor's Theorem

= Sequences and Series

== Discussion: Rearrangements of Infinite Series

== The Limit of a Sequence