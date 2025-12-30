#import "imports.typ": *

== Definition

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().5][

]

#solution[

]

#exercise[#currnum().6][

]

#solution[

]

#exercise[#currnum().7][

]

#solution[

]

#exercise[#currnum().8][

]

#solution[

]

#exercise[#currnum().9][

]

#solution[

]

#exercise[#currnum().10][

]

#solution[

]

#exercise[#currnum().11][

]

#solution[

]

#exercise[#currnum().12][

]

== Expectation of a product under independence

#exercise[#currnum().2][

]

#solution[

]

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().4][

]

#solution[

]

#exercise[#currnum().5][

]

== The second Borel--Cantelli lemma

#exercise[#currnum().2][
  Let $X_1, X_2, dots$ be a sequence of i.i.d. random variables such that $EE[abs(X_1)] = oo$.
  Prove that $PP(abs(X_n) >= n "i.o.") = 1$.
]

#solution[
  Notice that $abs(X_n)$ is a non-negative random variable.

  Recall that we have an earlier result of the following (#TODO[cite exercise 6.1.9]) for non-negative random variables:
  $
    EE[X] <= sum_(n=0)^oo PP(X >= n).
  $
  Now, plugging in $abs(X_1)$, we get that:
  $
    oo = EE[abs(X_1)] <= sum_(n=0)^oo PP(abs(X_1) >= n) = PP(abs(X_1) >= 0) + sum_(n=1)^oo PP(abs(X_n) >= n),
  $
  where the last equality follows from the fact that the $X_i$ are identically distributed.

  Since $PP(abs(X_1) >= 0) = 1$, we still have that:
  $sum_(n=1)^oo PP(abs(X_n) >= n) = oo$.

  Note that since the underlying random variables are independent, that the events ${abs(X_n) >= n}$ are also independent.

  Thus, we satisfy the conditions for the second Borel--Cantelli lemma, and we can conclude that:
  $
    PP(abs(X_n) >= n "infinitely often") = 1.
  $
]

#exercise[#currnum().3][
  Let $X_1, X_2, dots$ be an i.i.d. sequence of integer-valued random variables.
  Take any $m$ and any sequence of integers $k_1, k_2, dots, k_m$ such that $PP(X_1 = k_i) > 0$ for each $i$.
  Prove that with probability $1$, there are infinitely many occurrences of the sequence $k_1, dots, k_m$ in a realization of $X_1, X_2, dots$.
]

#solution[
  Let the event described in the prompt be denoted as $A$.

  The immediate difficulty is that for any consecutive sequence $X_(i+1), dots, X_(i + m)$, the event that this sequence is $k_1, k_2, dots, k_m$ is *not* independent from the event that $(X_(i+2), dots, X_(i + m + 1)) = (k_1, dots, k_m)$, or any event involving any overlapping members of the random variable sequence.

  To get around this, note we can prove that a subset of the desired event occurs with probability 1, where we can divide up this new event into independent events.

  Let $Y_i = (X_(i m - m + 1), dots, X_(i m))$, where $i in {1, 2, dots}$, and let $A_i$ be the event that $Y_i = (k_1, k_2, dots, k_m)$.

  Then, note that for any $i != j$, we have that $Y_i indep Y_j$, since they involve disjoint random variables, and thus $A_i indep A_j$.

  I claim that the event ${A_i "infinitely often"} subset.eq A$.
  Clearly, if the first event happens, then we have infinite occurences of our sequence $k_1, dots, k_m$, so our outcome is in the second event as well.

  Now, note that $PP(A_i) > 0$, since it decomposes into a product of independent individual events which are all strictly positive.
  Let's call this probability $c$.

  Since the $X_k$ are identically distributed, we have that $PP(A_i) = PP(A_j) = c$, and thus we get the following:
  $
    sum_(i=1)^oo PP(A_i) = oo.
  $
  Thus, the second Borel--Cantelli lemma applies, and we get that $PP(A_i "i.o.") = 1$.
  Since this is a sub-event of our original event $A$, we get that $PP(A) >= 1$, such that $PP(A) = 1$.=
]

== The Kolmogorov zero-one law

#exercise[#currnum().2][

]

#solution[

]

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().4][

]

== Zero-one laws for i.i.d. random variables

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().5][

]

#solution[

]

== Random vectors


#exercise[#currnum().1][

]

#solution[

]

#exercise[#currnum().2][

]

#solution[

]

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().4][

]

#solution[

]

#exercise[#currnum().5][

]

#solution[

]

#exercise[#currnum().6][

]

#solution[

]

#exercise[#currnum().7][

]

#solution[

]

#exercise[#currnum().8][

]

#solution[

]

== Convolutions

#exercise[#currnum().2][

]

#solution[

]

#exercise[#currnum().3][

]

#solution[

]

#exercise[#currnum().4][

]

#solution[

]

#exercise[#currnum().5][

]

#solution[

]

#exercise[#currnum().6][

]

#solution[

]

#exercise[#currnum().7][

]

#solution[

]
