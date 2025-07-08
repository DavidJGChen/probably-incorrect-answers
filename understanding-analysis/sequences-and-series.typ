#import "@local/david:1.0.1": *


== Discussion: Rearrangements of Infinite Series

No exercises in this section.

== The Limit of a Sequence

#exercise[2.2.1][
  What happens if we reverse the order of the quantifiers in Definition 2.2.3?

  _Definition:_ A sequence $(x_n)$ _verconges_ to $x$ if _there exists_ an $epsilon.alt > 0$ such that _for all_ $N in NN$ it is true that $n >= N$ implies $abs(x_n - x) < epsilon.alt$.

  Give an example of a vercongent sequence.
  Is there an example of a vercongent sequence that is divergent?
  Can a sequence verconge to two different values?
  What exactly is being described in this strange definition?
]

#solution[
  An example is the sequence of alternating $0$'s and $1$'s.

  This is vercongent to any real number.
  We can just select large enough $epsilon.alt$ and it will work out.

  I believe that this is actually describing bounded sequences.
]

#exercise[2.2.2][
  Verify, using the definition of convergence of a sequence, that the following sequences converge to the proposed limit.
  + $lim (2n+1)/(5n+4) = 2/5$.

  + $lim (2n^2)/(n^3+3) = 0$.

  + $lim (sin(n^2))/(root(3, n)) = 0$.
]

#solution[
  +
    I claim we need to choose $N > 3/(25 epsilon.alt) - 4/5$.
    #proof[
      Let $epsilon.alt > 0$.
      Choose $N > 3/(25 epsilon.alt) - 4/5$.
      Now for $n >= N$, we can verify that:
      $
        abs((2n+1)/(5n+4) - 2/5) &= abs((3 slash 5)/(5n+4))\
        &= (3 slash 5)/(5n+4)\
        &< (3 slash 5)/(5(3/(25 epsilon.alt) - 4/5)+4)\
        &= epsilon.alt
      $
      as desired.
    ]

  +
    I claim we choose $N > 2/epsilon.alt$.
    #proof[
      Let $epsilon.alt > 0$.
      Choose $N > 2/epsilon.alt$.
      Notice that $abs((2n^2)/(n^3+3))$ is always positive if $n > 0$.
      For $n >= N$, we have that:
      $
        abs((2n^2)/(n^3+3)) = (2n^2)/(n^3+3) < (2n^2)/n^3 = 2 / n < epsilon.alt
      $
      as desired.
    ]
  
  +
    I claim we choose $N > 1 / epsilon^3$.
    #proof[
      Let $epsilon.alt > 0$.
      Choose $N > 1 / epsilon.alt^3$.
      Notice that $abs(sin(n^2)) <= 1$ always.

      If $n >= N$, we can see that $n > 1/epsilon.alt^3$ or alternatively $root(3, n) > 1/epsilon.alt$.

      Therefore, we have that:
      $
        abs((sin(n^2))/(root(3, n))) &= abs(sin(n^2))/(root(3, n))\
        &<= 1 / root(3, n) < epsilon.alt.
      $
      as desired.
    ]    
]

#exercise[2.2.3][
  Describe what we would have to demonstrate in order to disprove each of the following statements.
  +
    At every college in the United States, there is a student who is at least seven feet tall.
  +
    For all colleges in the United States, there exists a professor who gives every student a grade of either A or B.
  +
    There exists a college in the United States where every student is at least six feet tall.
]

#solution[
  +
    Find a college in the US where all students are below 7 feet tall.
  +
    Find a college in the US where all professors give out grades other than A or B.
  +
    Show that all colleges have a student under 6 feet tall.
]

#exercise[2.2.4][
  Give an example of each or state that the request is impossible.
  For any that are impossible, give a compelling argument for why that is the case.
  +
    A sequence with an infinite number of ones that does not converge to one.
  +
    A sequence with an infinite number of ones that converges to a limit not equal to one.
  +
    A divergent sequence such that for every $n in NN$ it is possible to find $n$ consecutive ones somewhere in the sequence.
]

#solution[
  + Alternating $0$'s and $1$'s.
  +
    Not possible.
    If we select $epsilon.alt < abs(x - 1)$, where $x$ is the "limit", then we can see that there can never be a $N$ such that every element in the sequence after that is within that $epsilon.alt$-neighborhood.
    This is because there must be infinite ones, which cannot all be in the first $N$ elements.
  +
    Yes, just do $1, 0, 1, 1, 0, 1, 1, 1, 0, dots$.
    This can never converge due to a similar argument to part (b).
    But by construction, we can always find $n$ consecutive ones.
]

#exercise[2.2.5][
  Let $[[x]]$ be the greatest integer less than or equal to $x$.
  For example, $[[pi]] = 3$ and $[[3]] = 3$.
  For each sequence, find $lim a_n$ and verify it with the definition of convergence.
  + $a_n = [[5 slash n]]$,
  + $a_n = [[(12 + 4 n) slash 3n]]$.
  Reflecting on these examples, comment on the statement following Definition 2.2.3 that "the smaller the $epsilon.alt$-neighborhood, the larger $N$ may have to be."
]

#solution[
  +
    Claim: $lim a_n = 0$.

    #proof[
      After $N > 5$, all $n >= N$ will be such that $a_n = 0$.
    ]

  +
    Claim: $lim a_n = 1$.

    #proof[
      After $N > 6$, for $n >= N$, the inner part of $a_n$ will be less than $2$.
      In addition, the inner part will always be greater than $4 slash 3$.
      Therefore after $N > 6$ every element in the sequence will equal $1$ exactly.
    ]
]

#exercise[2.2.6][
  Prove Theorem 2.2.7.
  To get started, assume $(a_n) -> a$ and also that $(a_n) -> b$.
  Now argue $a = b$.
]

#solution[
  We start with the stated assumptions.

  AFSOC $a != b$, then we could choose $epsilon.alt < abs(a - b) / 2$.

  By the definition of limits, there would exist $N$ and $N'$ such that any $n >= max(N, N')$ satisfies $abs(x_n - a) < epsilon.alt$ and $abs(x_n - b) < epsilon.alt$.

  Using the triangle inequality, we know that
  $
    abs(a - b) = abs(a - x_n + x_n - b) <= abs(x_n - a) + abs(x_n - b) < 2 epsilon.alt < abs(a - b).
  $
  In other words, we have shown that $abs(a - b) < abs(a - b)$.
  This is a *contradiction*.

  Therefore, it must be the case that $a = b$.
]

#exercise[2.2.7][
  Here are two useful definitions:
  #enum(numbering: "(i)", tight: false)[
    A sequence $(a_n)$ is _eventually_ in a set $A subset.eq RR$ if there exists an $N in NN$ such that $a_n in A$ for all $n >= N$.
  ][
    A sequence $(a_n)$ is _frequently_ in a set $A subset.eq RR$ if, for every $N in NN$, there exists an $n >= N$ such that $a_n in A$.
  ]

  +
    Is the sequence $(-1)^n$ eventually or frequently in the set ${1}$?
  
  +
    Which definition is stronger?
    Does frequently imply eventually or does eventually imply frequently?
  
  +
    Give an alternate rephrasing of Definition 2.2.3B using either frequently or eventually.
    Which is the term we want?
  
  +
    Suppose an infinite number of terms of a sequence $(x_n)$ are equal to $2$.
    Is $(x_n)$ necessarily eventually in the interval $(1.9, 2.1)$?
    Is it frequently in $(1.9, 2.1)$?
]

#solution[
  + Frequently.
  +
    Eventually implies frequently.
    To see this, notice that for any natural number, if it is less than or equal to $N$, then we can just use any number after $N$ as our $n$, and if it is greater than $N$, then any number greater than our current number should work.
  +
    A sequence $(a_n)$ converges to $a$ if for any $epsilon.alt$-neighborhood of $a$, the sequence is eventually in it.
  +
    $(x_n)$ is not necessarily eventually in it, as we could have also an infinite number of terms that are $2.2$ for example.

    However, it is definitely the case that $(x_n)$ is frequently within those bounds.

]

#exercise[2.2.8][
  For some additional practice with nested quantifiers, consider the following invented definition:

  Let's call a sequence $(x_n)$ _zero-heavy_ if there exists $M in NN$ such that for all $N in NN$ there exists $n$ satisfying $N <= n <= N + M$ where $x_n = 0$.

  + Is the sequence $(0, 1, 0, 0, 1, dots)$ zero-heavy?
  
  +
    If a sequence is zero-heavy does it necessarily contain an infinite number of zeros?
    If not, provide a counterexample.
  
  +
    If a sequence contains an infinite number of zeros, is it necessarily zero-heavy?
    If not, provide a counter example.
  
  +
    Form the logical negation of the above definition.
    That is, complete the sentence: A sequence is _not_ zero-heavy if....
]

#solution[
  +
    The given sequence is zero-heavy.
    Consider $M = 1$.
    Since there are never two $1$'s in a row, this is a valid $M$.
  
  +
    A zero-heavy sequence must contain an infinite amount of $0$'s.
    Otherwise, we could consider the first index $N$ after which there are no more $0$'s, and see that no value of $M$ will produce an interval that contains a $0$.
  
  +
    No.
    Consider the sequence $(0, 1, 0, 1, 1, 0, 1, 1, 1, 0, dots)$.
    Given any $M$, once we are far enough in the sequence, we will always be able to find a string of $1$'s that is longer than $M$.

  +
    A sequence is not zero-heavy if for all $M in NN$, there exists a $N in NN$ such that for all $n$ satisfying $N <= n <= N + M$, $x_n != 0$.
]

== The Algebraic and Order Limit Theorems

#exercise[2.3.1][
  Let $x_n >= 0$ for all $n in NN$.

  + If $(x_n) -> 0$, show that $(sqrt(x_n)) -> 0$.
  
  + If $(x_n) -> x$, show that $(sqrt(x_n)) -> sqrt(x)$.
]

#solution[
  +
    Let arbitrary $epsilon.alt > 0$.
    Choose $N in NN$ such that for all $n >= N$, we have $abs(x_n) < epsilon.alt^2$.
    Thus we can reuse the same $N$ for $abs(sqrt(x_n)) < epsilon.alt$.

  +
    Assume $x > 0$.
    (This is valid due to Order Limit Theorem).
    Let arbitrary $epsilon.alt > 0$.
    Now observe the following:
    $
      abs(sqrt(x_n) - sqrt(x)) &= abs(x_n - x) / abs(sqrt(x_n) + sqrt(x))\
      &= abs(x_n - x) / (sqrt(x_n) + sqrt(x))\
      &<= abs(x_n - x) / (sqrt(x))\
      &< epsilon.alt' / sqrt(x) "for" n "larger than some" N in NN.
    $
    If we choose $epsilon.alt' = epsilon.alt sqrt(x)$, then we get that for $n >=$ some $N in NN$ that
    $
      abs(sqrt(x_n) - sqrt(x)) < epsilon.alt.
    $
]

#exercise[2.3.2][
  Using only Definition 2.2.3, prove that if $(x_n) -> 2$, then
  
  + $((2 x_n - 1) / 3) -> 1$;

  + $(1 slash x_n) -> 1 slash 2$.
  
  (For this exercise the Algebraic Limit Theorem is off-limits, so to speak.)
]

#solution[
  +
    $
      abs((2x_n - 1) / 3 - 1) = abs((2x_n - 4) / 3) = 2/3 abs(x_n - 2) < 2/3 epsilon.alt'.
    $
    Choose $epsilon.alt' = 3/2 epsilon.alt$.

  +
    $
      abs(1/x_n - 1/2) = abs(x_n - 2) / (2 abs(x_n))
    $
    Choose $N_1$ such that we get $abs(x_n) > abs(x) / 2$.
    Now choose $epsilon.alt' = abs(x)epsilon.alt$.
    So for $max(N_1, N_2)$ we have
    $
      abs(1/x_n - 1/2) < abs(x_n - 2) / abs(x) < epsilon.alt' / abs(x) = epsilon.alt.
    $
]

#exercise[2.3.3 (Squeeze Theorem)][
  Show that if $x_n <= y_n <= z_n$ for all $n in NN$, and if $lim x_n = lim z_n = l$, then $lim y_n = l$ as well.
]

#solution[
  Since $x_n <= y_n <= z_n$, we also get that
  $
    x_n - l <= y_n - l <= z_n - l.
  $
  Choose large enough $N$ such that for $n >= N$ we get that $z_n - l <= abs(z_n) - l < epsilon.alt$, as well as $x_n - l > -abs(x_n - l) > epsilon.alt$.
  This leaves us with:
  $
    -epsilon.alt < y_n - l < epsilon.alt, quad ==> quad abs(y_n - l) < epsilon.alt.
  $
  Thus $y_n$ converges and it must converge to $l$.
]

#exercise[2.3.4][
  Let $(a_n) -> 0$, and use the Algebraic Limit Theorem to compute each of the following limits (assuming the fractions are always defined):
  + $lim ((1+2 a_n)/(1 + 3 a_n - 4 a_n^2))$

  + $lim (((a_n+2)^2 - 4)/(a_n))$

  + $lim ((2/a_n + 3)/(1/a_n + 5))$
]

#solution[
  + $1$.

  +
    $
      lim (((a_n+2)^2 - 4)/(a_n)) = lim ((a_n^2+4 a_n)/(a_n)) = lim (a_n+4) = 4.
    $
  
  +
    $
      lim ((2/a_n + 3)/(1/a_n + 5)) = lim ((2 + 3 a_n)/(1 + 5 a_n)) = 2.
    $
]

#exercise[2.3.5][
  Let $(x_n)$ and $(y_n)$ be given, and define $(z_n)$ to be the "shuffled" sequence $(x_1, y_1, x_2, y_2, x_3, y_3, dots, x_n, y_n, dots)$.
  Prove that $(z_n)$ is convergent if and only if $(x_n)$ and $(y_n)$ are both convergent with $lim x_n = lim y_n$.
]

#solution[
  ($=>$)
  Assume that $(z_n)$ is convergent.
  Then after some $N in NN$, for $n >= N$ we have that all $abs(z_n - z) < epsilon.alt$ for some $z in RR$ and arbitrary $epsilon.alt$.
  
  Then we also get that for $n > N / 2$, both $abs(x_n - z) < epsilon.alt$ and $abs(y_n - z) < epsilon.alt$, which shows they both converge to $z$.

  ($arrow.double.l$)
  Assume that $x_n$ and $y_n$ both converge to $z$. For arbitrary $epsilon.alt > 0$, pick $N = max{N_1, N_2}$ such that for $n >= N$, we have $abs(x_n - z) < epsilon.alt$ and $abs(y_n - z) < epsilon.alt$.

  Therefore for $n >= 2N$, we have that $z_n = x_(floor(n/2))$ or $y_(floor(n/2))$ is such that $abs(z_n - z) < epsilon.alt$, and we have shown that $(z_n)$ converges to $z$.
]

#exercise[2.3.6][
  Consider the sequence given by $b_n = n - sqrt(n^2 + 2 n)$.
  Taking $(1 slash n) -> 0$ as given, and using both the Algebraic Limit Theorem and the result in Exercise 2.3.1, show $lim b_n$ exists and find the value of the limit.
]

#solution[
  Multiply top and bottom by the conjugate:
  $
    n - sqrt(n^2 + 2 n) &= (n^2 - n^2 - 2n) / (n + sqrt(n^2 + 2 n))\
    &= (-2 n) / (n + sqrt(n^2 + 2 n))\
    &= (-2) / (1 + sqrt(1 + 2/n)).
  $
  The sequence defined by $1 + 2/n$ is positive and approaches the limit $1$, so therefore the square root of the sequence does as well.

  Thus, the original sequence for the entire expression approaches $-1$ by the ALT.
]

#exercise[2.3.7][
  Give and example of each of the following, or state the such a request is impossible by referencing the proper theorems(s):

  +
    sequences $(x_n)$ and $(y_n)$, which both diverge, but whose sum $(x_n + y_n)$ converges;
  
  +
    sequences $(x_n)$ and $(y_n)$, where $(x_n)$ converges, $(y_n)$ diverges, and $(x_n + y_n)$ converges;
  
  +
    a convergent sequence $(b_n)$ with $b_n != 0$ for all $n$ such that $(1 slash b_n)$ diverges;
  
  +
    an unbounded sequence $(a_n)$ and a convergent sequence $(b_n)$ with $(a_n - b_n)$ bounded;
  
  +
    two sequences $(a_n)$ and $(b_n)$, where $(a_n b_n)$ and $(a_n)$ converge but $(b_n)$ does not.
]

#solution[
  +
    Yes, consider $x_n = (-1)^n$, and $y_n = (-1)^(n + 1)$.
    Their sum is simply $0$.
  
  +
    No, by ALT we would have that $(x_n + y_n - x_n)$ converges.

  +
    Consider $b_n = 1/n$. Then $1 / b_n = n$ which clearly diverges.
  
  +
    Since every convergent sequence is bounded, we know that $abs(b_n) <= M$, where $M$ is the bound on $b_n$ and $N$ is the bound on $a_n - b_n$.

    So therefore
    $
      abs(a_n) = abs(a_n - b_n + b_n) <= abs(a_n - b_n) + abs(b_n) <= M + N,
    $
    and $(a_n)$ must be bounded as well.
  
  +
    Let $a_n = 0$ for all $n$, and let $b_n = n$.

    Clearly their product is $0$ for all $n$.
]

#exercise[2.3.8][
  Let $(x_n) -> x$ and let $p(x)$ be a polynomial.
  + Show $p(x_n) -> p(x)$.
  +
    Find an example of a function $f(x)$ and a convergent sequence $(x_n) -> x$ where the sequence $f(x_n)$ converges, but not to $f(x)$.
]

#solution[
  +
    Follows directly from ALT, since a polynomial is simply a combination of multiplications and additions.
  
  +
    Let $f(x)$ be the following:
    $
      f(x) = cases(
        5 "if" x = 0,
        x "else"
      ).
    $
    Now, $f(0) = 5$, but any sequence that approaches $0$ but never reaches it will instead approach the limit value $0$.
]

#exercise[2.3.9][
  +
    Let $(a_n)$ be a bounded (not necessarily convergent) sequence, and assume $lim b_n = 0$.
    Show that $lim (a_n b_n) = 0$.
    Why are we not allowed to use the Algebraic Limit Theorem to prove this?
  +
    Can we conclude anything about the convergence of $(a_n b_n)$ if we assume that $(b_n)$ converges to some nonzero limit $b$?
  +
    Use (a) to prove Theorem 2.3.3, part (iii), for the case when $a = 0$.
]

#solution[
  + 
    Since $a_n$ is bounded, we have that $abs(a_n) <= M$ for all $n$.

    Now for arbitrary $epsilon.alt' > 0$, there is some $N$ such that $n >= N$ implies
    $
      abs(a_n b_n) = abs(a_n) abs(b_n) <= M abs(b_n) < M epsilon.alt'.
    $
    Choose $epsilon.alt' = epsilon.alt / M$, and we have that $(a_n b_n)$ converges to $0$.

    We can't use ALT since $(a_n)$ is not necessarily convergent, just bounded.
  
  +
    No.
    Consider the constant sequence $b_n = 1$, which is clearly convergent.
    However, given any bounded and not convergent sequence $(a_n)$, we have that $(a_n b_n) = (a_n)$.
    However I do believe that the product sequence is still bounded... I won't prove this.
  
  +
    Since all convergent sequences are bounded, we can just use our result from (a) directly.
]

#exercise[2.3.10][
  Consider the following list of conjectures.
  Provide a short proof for those that are true and a counterexample for any that are false.
  + If $lim (a_n - b_n) = 0$, then $lim a_n = lim b_n$.
  + If $(b_n) -> b$, then $abs(b_n) -> abs(b)$.
  + If $(a_n) -> a$ and $(b_n - a_n) -> 0$, then $(b_n) -> a$.
  + If $(a_n) -> 0$ and $abs(b_n - b) <= a_n$ for all $n in NN$, then $(b_n) -> b$.
]

#solution[
  +
    False, consider $a_n = n$, $b_n = n$.
    They have no limit, but their difference is simply $0$.

  + $abs(abs(b_n) - abs(b)) <= abs(b_n - b)$ by reverse triangle inequality.

  +
    Directly follows from ALT.

  +
    Yes, because $abs(b_n - b) <= a_n <= abs(a_n) < epsilon.alt$ for all $n >= N in NN$ for any arbitrary $epsilon.alt$.

]

#exercise[2.3.11 (Cesaro Means)][
  +
    Show that if $(x_n)$ is a convergent sequence, then the sequence given by the averages
    $
      y_n = (x_1 + x_2 + dots + x_n) / n
    $
    also converges to the same limit.
  +
    Give an example to show that it is possible for the sequence $(y_n)$ of averages to converge even if $(x_n)$ does not.
]

#solution[
  +
    Assume $(x_n) -> x$.

    Let $epsilon.alt > 0$ be arbitrary.

    Past some $N_1 in NN$ we have that $abs(x_n - x) < epsilon.alt / 2$.

    For all $x_i$ for $i < N_1$, let $M = max{abs(x_i - x)}$.

    Let $N_2 in NN$ be such that for $n >= N_2$, we have $1 / n < epsilon.alt / (2N_1 M)$.

    Now for $N = max{N_1, N_2}$, we have for $n >= N$
    $
      abs((x_1 + x_2 + dots + x_n) / n - x) &= 1/n abs(x_1 + x_2 + dots + x_n - n x)\
      &<= 1 / n (abs(x_1 - x + x_2 - x + dots + x_i - x) + abs(x_(i+1) - x + dots + x_n - x))\
      &< 1/n (N_1 M + (n - N_1) epsilon.alt/2)\
      &<= 1/n (N_1 M) + epsilon.alt/2\
      &< epsilon.alt/2 + epsilon.alt/2 = epsilon.alt.
    $

  +
    The alternating sequence of $0$'s and $1$'s does not converge.
    However, the sequence of averages will converge to $1 slash 2$.
]

#exercise[2.3.12][
  A typical task in analysis is to decipher whether a property possessed by every term in a convergent sequence is necessarily inherited by the limit.
  Assume $(a_n) -> a$, and determine the validity of each claim.
  Try to produce a counterexample for any that are false.
  +
    If every $a_n$ is an upper bound for a set $B$, then $a$ is also an upper bound for $B$.
  +
    If every $a_n$ is in the complement of the interval $(0,1)$, then $a$ is also in the complement of $(0,1)$.
  +
    If every $a_n$ is rational, then $a$ is rational.
]

#solution[
  +
    True. AFSOC that $a$ is not an upper bound for the set $B$.
    Then there is some $b in B$ such that $b > a$. Let $epsilon.alt = b - a$.
    Then there is some $N in NN$ such that for all $n >= N$ we have $abs(a_n - a) < epsilon.alt$.
    Clearly all $a_n$ must be larger than $a$, so we have that $a_n - a < b - a$, so then $a_n < b$, and we have shown our contradiction since we assumed that all $a_n$ would also be upper bounds.

  +
    True. AFSOC that $a in (0,1)$.
    Then choose $epsilon.alt = 1/2 min{a, 1 - a} > 0$.
    There must be an $a_n$ within that $epsilon.alt$-neighborhood, which is clearly not in the complement of $(0,1)$.
  
  +
    False, consider the sequence defined by the decimal approximation of $pi$.
]

#exercise[2.3.13 (Iterated Limits)][
  Given a doubly indexed array $a_(m n)$ where $m, n in NN$, what should $lim_(m,n -> oo) a_(m n)$ represent?
  +
    Let $a_(m n) = m slash (m + n)$ and compute the _iterated_ limits
    $
      #box(width: 100%)[
        $
          lim_(n -> oo) (lim_(m -> oo) a_(m n)) quad "and" quad lim_(m -> oo) (lim_(n -> oo) a_(m n)).
        $
      ]
    $
    Define $lim_(m,n) a_(m n) = a$ to mean that for all $epsilon.alt > 0$ there exists an $N in NN$ such that if both $m, n >= N$, then $abs(a_(m n) - a) < epsilon.alt$.
  +
    Let $a_(m n) = 1 slash (m + n)$.
    Does $lim_(m, n -> oo) a_(m n)$ exist in this case?
    Do the two iterated limits exist?
    How do these three values compare?
    Answer these same questions for $a_(m n) = m n slash (m^2 + n^2)$.
  +
    Produce an example where $lim_(m, n -> oo) a_(m n)$ exists but where neither iterated limit can be computed.
  +
    Assume $lim_(m, n -> oo) = a$, and assume that for each fixed $m in NN$, $lim_(n -> oo) (a_(m n)) -> b_m$.
    Show $lim_(m -> oo) b_m = a$.
  +
    Prove that if $lim_(m, n -> oo) a_(m n)$ exists and the iterated limits both exist, then all three limits must be equal.
]

#solution[
  +
    The first limit is equal to $1$, while the second limit is equal to 0.
  
  +
    Yes, the limit is $0$.
    Yes, both iterated limits exist and are $0$.

    For $a_(m n) = m n slash (m^2 + n^2)$, $lim_(m,n) a_(m n)$ does not exist, since we can make the sequence approach different values.
    (This is not super rigorous, but it is if we assume the result that a limit can only have one value.)

    However, the iterated limits exist and are both $0$.

  +
    Choose the following:
    $
      a_(m n) = (-1)^(m + n) (1/m + 1/n)
    $
    The iterated limits do not exist, as they will oscillate between $1/m$ and $-1/m$ or $1/n$ and $-1/n$.

    However, $lim_(m, n) a_(m n) = 0$, which can be easily proven by triangle inequality.
  
  +
    Let $epsilon.alt > 0$ be arbitrary.

    Let's use the triangle inequality:
    $
      abs(b_m - a) &= abs(b_m - a_(m n) + a_(m n) - a)\
      &<= abs(a_(m n) - b_m) + abs(a_(m n) - a)\
      &<= epsilon.alt' + epsilon.alt''
    $
    Find $N$ and $M$ such that we approach $epsilon.alt' = epsilon.alt'' = epsilon.alt/2$, and take $m >= max{N, M}$ to finish the proof.

  +
    This is just part (d).
]

== The Monotone Convergence Theorem and Infinite Series

#exercise[2.4.1][
  +
    Prove that the sequence defined by $x_1 = 3$ and
    $
      x_(n+1) = 1 / (4 - x_n)
    $
    converges.
  
  +
    Now that we know $lim x_n$ exists, explain why $lim x_(n+1)$ must also exist and equal the same value.
  
  +
    Take the limit of each side of the recursive equation in part (a) to explicitly compute $lim x_n$.
]

#solution[
  +
    I claim that the sequence is monotone decreasing.
    #proof[
      BC: $x_2 = 1 < 3 = x_1$.

      IH:
      Assume true for some $n$ (that $x_n <= x_(n-1)$).
      Then:
      $
        4-x_n >= 4 - x_(n-1) ==> 1/(4 - x_n) <= 1 / (4 - x_(n-1)) ==> x_(n+1) <= x_n.
      $
    ]
    It is also bounded below by $1/4$, which can also be proved by induction.
    The base case is obvious, and if we assume $x >= 1/4 > 0$, then
    $
      x_(n+1) = 1 / (4 - x_n) >= 1 / 4.
    $
    So now MCT finishes the argument.

  +
    It's literally the same, just missing the first term.

    For $n >= N in NN$, we can see that $max{0, N - 1}$ works in the limit argument.

  +
    $
      x = 1 / (4 - x) ==> x = 2 - sqrt(3).
    $
    $2 + sqrt(3)$ is not valid since it is greater than $3$.
]

#exercise[2.4.2][
  +
    Consider the recursively defined sequence $y_1 = 1$,
    $
      y_(n+1) = 3 - y_n,
    $
    and set $y = lim y_n$.
    Because $(y_n)$ and $(y_(n+1))$ have the same limit, taking the limit across the recursive equation gives $y = 3 - y$.
    Solving for $y$, we conclude $lim y_n = 3 slash 2$.

    What is wrong with this argument?

  +
    This time set $y_1 = 1$ and $y_(n+1) = 3 - 1 / y_n$.
    Can the strategy in (a) be applied to compute the limit of this sequence?
]

#solution[
  +
    There may not be a limit in the first place.
    In this case, there is not, since it oscillates between $1$ and $2$.
  
  +
    Yes, we can use a similar approach to 2.4.1 to show that it is monotone increasing and bounded above by 3.
]

#exercise[2.4.3][
  +
    Show that
    $
      #box(width: 100%)[
        $
          sqrt(2), sqrt(2 + sqrt(2)), sqrt(2 + sqrt(2 + sqrt(2))), dots
        $
      ]
    $
    converges and find the limit.

  +
    Does the sequence
    $
      #box(width: 100%)[
        $
          sqrt(2), sqrt(2 sqrt(2)), sqrt(2 sqrt(2 sqrt(2))), dots
        $
      ]
    $
    converge?
    If so, find the limit.
]

#solution[
  +
    The recursive formula for the sequence is $x_(n+1) = sqrt(2 + x_n)$.

    By induction (using the fact that the square root function is increasing), the sequence is increasing.

    I also claim it is bounded above by $2$.
    #proof[
      BC: $sqrt(2) < 2$.

      IH: assume true for some $n$.

      Now:
      $
        sqrt(2 + x_n) < sqrt(4) = 2.
      $
    ]
    Now we apply MCT.

    Taking the limit of both sides of the recursive formula, we get that $x = 2$.
  
  +
    By similar argument to above, we claim the sequence is monotone increasing and the upper bound is $2$.
    The limit is $2$.
]

#exercise[2.4.4][
  +
    In Section 1.4 we used the Axiom of Completeness (AoC) to prove the Archimedean Property of $RR$ (Theorem 1.4.2).
    Show that the Monotone Convergence Theorem can also be used to prove the Archimedean Property without making any use of AoC.
  +
    Use the Monotone Convergence Theorem to supply a proof for the Nested Interval Property (Theorem 1.4.1) that doesn't make use of AoC.

    These two results suggest that we could have used the Monotone Convergence Theorem in place of AoC as our starting axiom for building a proper theory of the real numbers.
]

#solution[
  +
    Assume $y > 0$, otherwise we can just choose any $n in NN$ and be done.

    Now notice that the sequence $1 / n$ is bounded below by 0, and is also monotone decreasing.

    This suggests that it converges to a limit by MCT.

    To produce the limit, notice that $lim 1/n = lim 1/(n + 1)$.

    We can recursively see that:
    $
      1/(n+1) = 1/n dot (n / (n + 1)) = 1/n dot (1 - 1 / (n + 1)).
    $
    So by ALT we can see that the limit $s$ must be such that:
    $
      s = s (1 - s) ==> s = 0.
    $

    Therefore by the definition of a limit we get that for arbitrary $epsilon.alt > 0$, there exists $N in NN$ such that for $n >= N$:
    $
      abs(1 / n) < epsilon.alt.
    $
    Take $epsilon.alt = y$, and note that $1/n$ is always positive to get the Archimedean Property:
    $
      1/n < y "for large enough" n in NN.
    $
  
  +
    Note that the sequences $(a_n)$ and $(b_n)$ are monotone increasing/decreasing and bounded above/below.

    Therefore by MCT they must converge to some $a$ and $b$ respectively.
    In addition, its clear that $a_n <= a$ and $b_n >= b$ for all $n$.

    I claim that $a <= b$.
    If it were the case that $a > b$, then we could set $epsilon.alt = a - b$, and select some $b_n$ such that
    $b_n - b = abs(b_n - b) < a - b$.

    With some algebra we get:
    $
      b_n - a_n < a - a_n <= 0 quad ==> quad b_n < a_n.
    $
    This is impossible for an interval, which is a *contradiction*. Therefore it must be that $a <= b$ and thus we can choose any $x$ such that $a <= x <= b$, and it will be present in every interval.
    Thus the interval will not be empty.
]

#exercise[2.4.5][
  Let $x_1 = 2$, and define
  $
    x_(n+1) = 1/2 (x_n + 2 / x_n).
  $
  +
    Show that $x_n^2$ is always greater than or equal to $2$, and then use this to prove that $x_n - x_(n+1) >= 0$.
    Conclude that $lim x_n = sqrt(2)$.
  +
    Modify the sequence $(x_n)$ so that it converges to $sqrt(c)$.
]

#solution[
  #TODO[July 8]
]

#exercise[2.4.6 (Arithmetic--Geometric Mean)][
  +
    Explain why $sqrt(x y) <= (x+y) slash 2$ for any two positive real numbers $x$ and $y$.
    (The geometric mean is always less than the arithmetic mean.)
  +
    Now let $0 <= x_1 <= y_1$ and define
    $
      #box(width: 100%)[
        $
          x_(n+1) = sqrt(x_n y_n) quad "and" quad y_(n+1) = (x_n + y_n) / 2.
        $
      ]
    $
    Show $lim x_n$ and $lim y_n$ both exist and are equal.
]

#exercise[2.4.7 (Limit Superior)][
  Let $(a_n)$ be a bounded sequence.
  +
    Prove that the sequence defined by $y_n = sup {a_k mid(:) k >= n}$ converges.
  +
    The _limit superior_ of $(a_n)$, or $lim sup a_n$, is defined by
    $
      lim sup a_n = lim y_n.
    $
    where $y_n$ is the sequence from part (a) of this exercise.
    Provide a reasonable definition for $lim inf a_n$ and briefly explain why it always exists for any bounded sequence.
  +
    Prove that $lim inf a_n <= lim sup a_n$ for every bounded sequence, and give an example of sequence for which the inequality is strict.
  +
    Show that $lim inf a_n = lim sup a_n$ if and only if $lim a_n$ exists.
    In this case, all three share the same value.
]

#exercise[2.4.8][
  For each series, find an explicit formula for the sequence of partial sums and determine if the series converges.
  + $ sum_(n=1)^oo 1 / 2^n $
  + $ sum_(n=1)^oo 1 / (n (n+1)) $
  + $ sum_(n=1)^oo log ((n+1) / n) $
  (In (c), $log(x)$ refers to the natural logarithm function from calculus.)
]

#exercise[2.4.9][
  Complete the proof of Theorem 2.4.6 by showing that if the series $sum_(n=0)^oo 2^n b_(2^n)$ diverges, then so does $sum_(n=1)^oo b_n$.
  Example 2.4.5 may be a useful reference.
]

#exercise[2.4.10 (Infinite Products)][
  A close relative of infinite series is the _infinite product_
  $
    product_(n=1)^(oo) b_n = b_1 b_2 b_3 dots
  $
  which is understood in terms of its sequence of _partial products_
  $
    p_m = product_(n=1)^(m) b_n = b_1 b_2 b_3 dots b_m.
  $
  Consider the special class of infinite products of the form
  $
    product_(n=1)^(oo) (1 + a_n) = (1+a_1)(1+a_2)(1+a_3) dots.c, quad "where" a_n >= 0.
  $
  +
    Find an explicit formula for the sequence of partial products in the case where $a_n = 1 slash n$ and decide whether the sequence converges.
    Write out the first few terms in the sequence of partial products in the case where $a_n = 1 slash n^2$ and make a conjecture about the convergence of this sequence.
  +
    Show, in general, that the sequence of partial products converges if and only if $sum_(n=1)^oo a_n$ converges.
    (The inequality $1 + x <= 3^x$ for positive $x$ will be useful in one direction.)
]

== Subsequences and the Bolzano--Weierstrass Theorem

#exercise[2.5.1][
  Give an example of each of the following, or argue that such a request is impossible.
  
  +
    A sequence that has a subsequence that is bounded but contains no subsequence that converges.
  
  +
    A sequence that does not contain $0$ or $1$ as a term but contains subsequences converging to each of these values.

  +
    A sequence that contains subsequences converging to every point in the infinite set ${1, 1 slash 2, 1 slash 3, 1 slash 4, 1 slash 5, dots}$.
  
  +
    A sequence that contains subsequences converging to every point in the infinite set ${1, 1 slash 2, 1 slash 3, 1 slash 4, 1 slash 5, dots}$, and no subsequences converging to points outside of this set.
]

#exercise[2.5.2][
  Decide whether the following propositions are true or false, providing a short justification for each conclusion.

  +
    If every proper subsequence of $(x_n)$ converges, then $(x_n)$ converges as well.

  +
    If $(x_n)$ contains a divergent subsequence, then $(x_n)$ diverges.

  +
    If $(x_n)$ is bounded and diverges, then there exist two subsequences of $(x_n)$ that converge to different limits.

  +
    If $(x_n)$ is monotone and contains a convergent subsequence, then $(x_n)$ converges.
]

#exercise[2.5.3][
  +
    Prove that if an infinite series converges, then the associative property holds.
    Assume $a_1 + a_2 + a_3 + a_4 + a_5 + dots$ converges to a limit $L$ (i.e., the sequence of partial sums $(s_n) -> L$).
    Show that any regrouping of the terms
    $
      (a_1 + a_2 + dots + a_(n_1)) + (a_(n_1 + 1) + dots + a_(n_2)) + (a_(n_2 + 1) + dots + a_(n_3)) + dots
    $
    leads to a series that also converges to $L$.
  
  +
    Compare this result to the example discussed at the end of Section 2.1 where infinite addition was shown not to be associative.
    Why doesn't our proof in (a) apply to this example?
]

#exercise[2.5.4][
  The Bolzano--Weirstrass Theorem is extremely important, and so is the strategy employed in the proof.
  To gain some more experience with this technique, assume the Nested Interval Property is true and use it to provide a proof of the Axiom of Completeness.
  To prevent the argument from being circular, assume also that $(1 slash 2^n) -> 0$.
  (Why precisely is this last assumption needed to avoid circularity?)
]

#exercise[2.5.5][
  Assume $(a_n)$ is a bounded sequence with the property that every convergent subsequence of $(a_n)$ converges to the same limit $a in RR$.
  Show that $(a_n)$ must converge to $a$.
]

#exercise[2.5.6][
  Use a similar strategy to the one in Example 2.5.3 to show $lim b^(1 slash n)$ exists for all $b >= 0$ and find the value of the limit.
  (The results in Exercise 2.3.1 may be assumed.)
]

#exercise[2.5.7][
  Extend the result proved in Example 2.5.3 to the case $abs(b) < 1$;
  that is, show $lim (b^n) = 0$ if and only if $-1 < b < 1$.
]

#exercise[2.5.8][
  Another way to prove the Bolzano--Weierstrass Theorem is to show that every sequence contains a monotone subsequence.
  A useful device in this endeavor is the notion of a _peak term_.
  Given a sequence $(x_n)$, a particular term $x_m$ is a peak term if no later term in the sequence exceeds it;
  i.e., if $x_m >= x_n$ for all $n >= m$.

  +
    Find examples of sequences with zero, one, and two peak terms.
    Find an example of a sequnce with infinitely many peak terms that is not monotone.
  
  +
    Show that every sequence contains a monotone subsequence and explain how this furnishes a new proof of the Bolzano--Weierstrass Theorem.
]

#exercise[2.5.9][
  Let $(a_n)$ be a bounded sequence, and define the set
  $
    S = {x in RR mid(:) x < a_n "for infinitely many terms" a_n}.
  $
  Show that there exists a subsequence $(a_(n_k))$ converging to $s = sup S$.
  (This is a direct proof of the Bolzano--Weierstrass Theorem using the Axiom of Completeness).
]

== The Cauchy Criterion

#exercise[2.6.1][
  Supply a proof for Theorem 2.6.2.
]

#exercise[2.6.2][
  Give an example of each of the following, or argue that such a request is impossible.

  + A Cauchy sequence that is not monotone.
  
  + A Cauchy sequence with an unbounded subsequence.

  + A divergent monotone sequence with a Cauchy subsequence.

  + An unbounded sequence containing a subsequence that is Cauchy.
]

#exercise[2.6.3][
  If $(x_n)$ and $(y_n)$ are Cauchy sequences, then one easy way to prove that $(x_n + y_n)$ is Cauchy is to use the Cauchy Criterion.
  By Theorem 2.6.4, $(x_n)$ and $(y_n)$ must be convergent, and the Algebraic Limit Theorem then implies $(x_n + y_n)$ is convergent and hence Cauchy.

  +
    Give a direct argument that $(x_n + y_n)$ is a Cauchy sequence that does not use the Cauchy Criterion or the Algebraic Limit Theorem.

  + Do the same for the product $(x_n y_n)$.
]

#exercise[2.6.4][
  Let $(a_n)$ and $(b_n)$ be Cauchy sequences.
  Decide whether each of the following sequences is a Cauchy sequence, justifying each conclusion.

  + $c_n = abs(a_n - b_n)$

  + $c_n = (-1)^n a_n$

  + 
    $c_n = [[a_n]]$, where $[[x]]$ refers to the greatest integer less than or equal to $x$.
]

#exercise[2.6.5][
  Consider the following (invented) definition:
  A sequence $(s_n)$ is _pseudo-Cauchy_ if, for all $epsilon.alt > 0$, there exists an N such that if $n >= N$, then $abs(s_(n+1) - s_n) < epsilon.alt$.

  Decide which one of the following two propositions is actually true.
  Supply a proof for the valid statement and a counterexample for the other.
  #enum(numbering: "(i)", tight: false)[
    Pseudo-Cauchy sequences are bounded.
  ][
    If $(x_n)$ and $(y_n)$ are pseudo-Cauchy, then $(x_n + y_n)$ is pseudo-Cauchy as well.
  ]
]

#exercise[2.6.6][
  Let's call a sequence $(a_n)$ _quasi-increasing_ if for all $epsilon.alt > 0$ there exists an $N$ such that whenever $n > m >= N$ it follows that $a_n > a_m - epsilon.alt$.

  +
    Give an example of a sequence that is quasi-increasing but not monotone or eventually monotone.
  
  +
    Give an example of a quasi-increasing sequence that is dvergent and not monotone oreventually monotone.

  +
    Is there an analogue of the Monotone Convergence Theorem for quasi-increasing sequences?
    give an example of a bounded, quasi-increasing sequence that doesn't converge, or prove that no such sequence exists.
]

#exercise[2.6.7][
  Exercises $2.4.4$ and $2.5.4$ establish the equivalence of the Axiom of Completeness and the Monotone Convergence Theorem.
  They also show the Nested Interval Property is equivalent to these other two in the presence of the Archimedean Property.

  +
    Assume the Bolzano--Weierstrass Theorem is true and use it to construct a proof of the Monotone Convergence Theorem without making any appeal to the Archimedean Property.
    This shows that BW, AoC, and MCT are all equivalent.

  +
    Use the Cauchy Criterion to prove the Bolzano-Weierstrass Theorem, and find the point in the argument where the Archimedean Property is implicitly required.
    This establishes the final link in the equivalence of the five characterizations of the completeness discussed at the end of Section 2.6.

  +
    How do we know it is impossible to prove the Axiom of Completeness starting from the Archimedean Property?
]

== Properties of Infinite Series

#exercise[2.7.1][
  Proving the Alternating Series Test (Theorem 2.7.7) amounts to showing that the sequence of partial sums
  $
    s_n = a_1 - a_2 + a_3 - dots.c plus.minus a_n
  $
  converges.
  (The opening example in Section 2.1 includes a typical illustration of $(s_n)$.)
  Different characterizations of completeness lead to different proofs.

  +
    Prove the Alternating Series Test by showing that $(s_n)$ is a Cauchy sequence.
  
  +
    Supply another proof for this result using the Nested Interval Property (Theorem 1.4.1).

  +
    Consider the subsequences $(s_(2 n))$ and $(s_(2 n + 1))$, and show how the Monotone Convergence Theorem leads to a third proof for the Alternating Series Test.
]

#exercise[2.7.2][
  Decide whether each of the following series converges or diverges:

  + $sum_(n=1)^(oo) 1 / (2^n + n)$

  + $sum_(n=1)^(oo) (sin (n)) / (n^2)$

  + $1 - 3/4 + 4/6 - 5/8 + 6/10 - 7/12 + dots.c$

  + $1 + 1/2 - 1/3 + 1/4 + 1/5 - 1/6 + 1/7 + 1/8 - 1/9$

  + $1 - 1/2^2 + 1/3 - 1/4^2 + 1/5 - 1/6^2 + 1/7 - 1/8^2$
]

#exercise[2.7.3][
  +
    Provide the details for the proof of the Comparison Test (Theorem 2.7.4) using the Cauchy Criterion for Series.

  +
    Give another proof for the Comparison Test, this time using the Monotone Convergence Theorem.
]

#exercise[2.7.4][
  Give an example of each or explain why the request is impossible referencing the proper theorems(s).

  +
    Two series $sum x_n$ and $sum y_n$ that both diverge but where $sum x_n y_n$ converges.

  +
    A convergent series $sum x_n$ and a bounded sequence $(y_n)$ such that $sum x_n y_n$ diverges.

  +
    Two sequences $(x_n)$ and $(y_n)$ where $sum x_n$ and $sum (x_n + y_n)$ both converge but $sum y_n$ diverges.

  +
    A sequences $(x_n)$ satisfying $0 <= x_n <= 1 slash n$ where $sum (-1)^n x_n$ diverges.
]

#exercise[2.7.5][
  Now that we have proved the basic facts about geometric series, supply a proof for Corollary 2.4.7.
]

#exercise[2.7.6][
  Let's say that a series _subverges_ if the sequence of partial sums contains a subsequence that converges.
  Consider this (invented) defintion for a moment, and then decide which of the following statements are valid propositions about subvergent series:

  + If $(a_n)$ is bounded, then $sum a_n$ subverges.

  + All convergent series are subvergent.

  + If $sum abs(a_n)$ subverges, then $sum a_n$ subverges as well.

  + If $sum a_n$ subverges, then $(a_n)$ has a convergent subsequence.
]

#exercise[2.7.7][
  +
    Show that if $a_n > 0$ and $lim (n a_n) = l$ with $l != 0$, then the series $sum a_n$ diverges.
  +
    Assume $a_n > 0$ and $lim (n^2 a_n)$ exists.
    Show that $sum a_n$ converges.
]

#exercise[2.7.8][
  Consider each of the following propositions.
  Provide short proofs for those that are true and counterexamples for any that are not.

  +
    If $sum a_n$ converges absolutely, then $sum a_n^2$ also converges absolutely.

  +
    If $sum a_n$ converges and $(b_n)$ converges, then $sum a_n b_n$ converges.

  +
    If $sum a_n$ converges conditionally, then $sum n^2 a_n$ diverges.
]

#exercise[2.7.9 (Ratio Test)][
  Given a series $sum_(n=1)^(oo) a_n$ with $a_n != 0$, the Ratio Test states that if $(a_n)$ satisfies
  $
    lim abs((a_(n+1))/a_n) = r < 1,
  $
  then the series converges absolutely.

  +
    Let $r'$ satisfy $r < r' < 1$.
    Explain why there exists an $N$ such that $n >= N$ implies #box[$abs(a_(n+1)) <= abs(a_n)r'$].
  
  + Why does $abs(a_N) sum (r')^n$ converge?

  +
    Now, show that $sum abs(a_n)$ converges, and conclude that $sum a_n$ converges.
]

#exercise[2.7.10 (Infinite Products)][
  Review Exercise 2.4.10 about infinite products and then answer the following questions:

  + Does $2/1 dot 3/2 dot 5/4 dot 9/8 dot 17/16 dots.c$ converge?

  +
    The infinite product $1/2 dot 3/4 dot 5/6 dot 7/8 dot 9/10 dots.c$ certainly converges.
    (Why?)
    Does it converge to zero?

  +
    In 1655, John Wallis famously derived the formula
    $
      ((2 dot 2) / (1 dot 3)) ((4 dot 4) / (3 dot 5)) ((6 dot 6) / (5 dot 7)) ((8 dot 8) / (7 dot 9)) dots.c = pi/2.
    $
    Show that the left side of this identity at least converges to something.
    (A complete proof of this result is taken up in Section 8.3.)
]

#exercise[2.7.11][
  Find examples of two series $sum a_n$ and $sum b_n$ both of which diverge but for which $sum min{a_n, b_n}$ converges.
  To make it more challenging, produce examples where $(a_n)$ and $(b_n)$ are strictly positive and decreasing.
]

#exercise[2.7.12 (Summation-by-parts)][
  Let $(x_n)$ and $(y_n)$ be sequences, let $s_n = x_1 + x_2 + dots.c + x_n$ and set $s_0 = 0$.
  Use the observation that $x_j = s_j - s_(j-1)$ to verify the formula
  $
    sum_(j=m)^(n) x_j y_j = s_n y_(n+1) - s_(m-1) y_m + sum_(j=m)^n s_j (y_j - y_(j+1)).
  $
]

#exercise[2.7.13 (Abel's Test)][
  Abel's Test for convergence states that if the series $sum_(k=1)^oo x_k$ converges, and if $(y_k)$ is a sequence satisfying
  $
    y_1 >= y_2 >= y_3 >= dots.c >= 0,
  $
  then the series $sum_(k=1)^oo x_k y_k$ converges.

  +
    Use Exercise 2.7.12 to show that
    $
      sum_(k=1)^n x_k y_k = s_n y_(n+1) + sum_(k=1)^n s_k (y_k - y_(k+1)),
    $
    where $s_n = x_1 + x_2 + dots.c + x_n$.

  +
    Use the Comparison Test to argue that $sum_(k=1)^oo s_k (y_k - y_(k+1))$ converges absolutely, and show how this leads directly to a proof of Abel's Test.
]

#exercise[2.7.14 (Dirichlet's Test)][
  Dirichlet's Test for convergence states that if the partial sums of $sum_(k=1)^oo x_k$ are bounded (but not necessarily convergent), and if $(y_k)$ is a sequence satisfying $y_1 >= y_2 >= y_3 >= dots.c >= 0$ with $lim y_k = 0$, then the series $sum_(k=1)^oo x_k y_k$ converges.

  +
    Point out how the hypothesis of Dirichlet's Test differs from that of Abel's Test in Exercise 2.7.13, but show that essentially the same strategy can be used to provide a proof.
  
  +
    Show how the Alternating Series Test (Theorem 2.7.7) can be derived as a special case of Dirichlet's Test.
]

== Double Summations and Products of Infinite Series

#exercise[2.8.1][
  Using the particular array $(a_(i j))$ from Section 2.1, compute $lim_(n -> oo) s_(n n)$.
  How does this value compare to the two iterated values for the sum already computed?
]

#exercise[2.8.2][
  Show that f the iterate series
  $
    sum_(i=1)^oo sum_(j=1)^oo abs(a_(i j))
  $
  converges (meaning that for each fixed $i in NN$ the series $sum_(j=1)^oo abs(a_(i j))$ converges to some real number $b_i$, and the series $sum_(i=1)^oo b_i$ converges as well), then the iterated series
  $
    sum_(i=1)^oo sum_(j=1)^oo a_(i j)
  $
  converges.
]

#exercise[2.8.3][
  + Prove that $(t_(n n))$ converges.

  +
    Now, use the fact that $(t_(n n))$ is a Cauchy sequence to argue that $(s_(n n))$ converges.
]

#exercise[2.8.4][
  +
    Let $epsilon.alt > 0$ be arbitrary and argue that there exists an $N_1 in NN$ such that $m, n >= N_1$ implies $B - epsilon.alt / 2 < t_(m n) <= B$.

  +
    Now, show that there exists an $N$ such that
    $
      abs(s_(m n)) < epsilon.alt
    $
    for all $m, n >= N$.
]

#exercise[2.8.5][
  +
    Show that for all $m >= N$
    $
      abs((r_1 + r_2 + dots.c + r_m) - S) <= epsilon.alt.
    $
    Conclude that the iterated sum $sum_(i=1)^oo sum_(j=1)^oo a_(i j)$ converges to $S$.

  +
    Finish the proof by showing that the other iterated sum, $sum_(j=1)^oo sum_(i=1)^oo a_(i j)$, converges to $S$ as well.
    Notice that the same argument can be used once it is established that, for each fixed column $j$, the sum $sum_(i=1)^oo a_(i j)$ converges to some real number $c_j$.
]

#exercise[2.8.6][
  +
    Assume the hypothesis---and hence the conclusion---of Theorem 2.8.1, show that $sum_(k=2)^oo d_k$ converges absolutely.

  +
    Imitate the strategy in the proof of Theorem 2.8.1 to show that $sum_(k=2)^oo d_k$ converges to $S = lim_(n -> oo) s_(n n)$.
]

#exercise[2.8.7][
  Assume that $sum_(i=1)^oo a_i$ converges absolutely to $A$, and $sum_(j=1)^oo b_j$ converges absolutely to $B$.
  
  +
    Show that the iterated sum $sum_(i=1)^oo sum_(j=1)^oo abs(a_i b_j)$ converges so that we may apply Theorem 2.8.1.
  +
    Let $s_(n n) = sum_(i=1)^n sum_(j=1)^n a_i b_j$, and prove that $lim_(n -> oo) s_(n n) = A B$.
    Conclude that
    $
      sum_(i=1)^oo sum_(j=1)^oo a_i b_j = sum_(j=1)^oo sum_(i=1)^oo a_i b_j = sum_(k=2)^oo d_k = A B,
    $
    where, as before, $d_k = a_1 b_(k-1) + a_2 b_(k-2) + dots.c + a_(k-1) b_1$.
]