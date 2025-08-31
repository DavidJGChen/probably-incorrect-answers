#import "imports.typ": *

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
  + 
    It is used when assuming we can find a non-zero minimum of the $epsilon.alt$-neighborhoods.

  +
    The collection ${(-1/n, 1/n) mid(:) n in NN}$ are all open intervals, yet their intersection is the finite set with one element $0$.
    This is closed, since there are no limit points.
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
  +
    For $A$, the limit points are $1$ and $-1$.
    For $B$, the limit points are $[0,1] subset.eq RR$.

  + 
    $A$ is not open in $RR$, since it contains isolated points.
    $A$ is not closed either, since it does not contain the limit point $-1$.

    $B$ is not open, since any $epsilon.alt$-neighborhood of any point will necessarily contain reals, which do not exist in $B$.
    $B$ is not closed either, since it contains irrational limit points.
    Or, we can see that it does not contain $0$ or $1$.

  +
    $A$ contains isolated points, for example, $-1/3$, since we can take $epsilon.alt = 2/15$, and notice that this neighborhood around $-1/3$ contains no other elements of $A$ other than $-1/3$.

    $B$ contains no isolated points, due to the density of rationals.

  +
    The closure $overline(A)$ is $A union {-1}$.

    The closure $overline(B)$ is $[0,1] subset.eq RR$.

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
  +
    Not open, just pick any point.
    Not closed, pick any irrational limit point.

  +
    Not open, just pick any point.
    Closed, there are no limit points.

  +
    Open, just pick a small enough $epsilon.alt$ such that it won't contain $0$.
    Not closed, $0$ is a limit point.

  +
    Not open, since it only contains rationals.
    Not closed, it does not contain its limit.
    (If it did, then we could show that it has a limit strictly greater than the proposed limit.)

  +
    Not open, since it only contains rationals.
    Closed, since it does not have any limit points.
]

#exercise[3.2.4][
  Let $A$ be nonempty and bounded above so that $s = sup A$ exists.

  + Show that $s in overline(A)$.

  + Can an open set contain its supremum?
]

#solution[
  +
    If $s in A$, then clearly $s in overline(A)$.
    Assume $s in.not A$.
    Then we know that for any $epsilon.alt > 0$, that there will exist some $a in A$ such that $a > s - epsilon.alt$.
    This means that any $epsilon.alt$-neighborhood of $s$ will intersect with $A$, thus showing that $s$ is a limit point and will be included in the closure.

  +
    An open set cannot contain its supremum, since any $epsilon.alt$-neighborhood centered at the supremum will necessarily contain points greater than the supremum, which cannot be in the original set.
]

#exercise[3.2.5][
  Prove Theorem 3.2.8.
]

#solution[
  We want to show that a set $F subset.eq RR$ is closed if and only if every Cauchy sequence contained in $F$ has a limit that is also an element of $F$.

  ($=>$)
  #proof[
    Assume $F$ is closed.
    Every Cauchy sequence in $RR$ must converge to some limit.
    If the Cauchy sequence converges to a limit, where the limit is already an element of the sequence, then we automatically know it is in $F$.

    If the limit converges to an element not in the sequence, then we know that this must be a limit point, and since $F$ contains all its limit points then the limit must be in $F$.
  ]

  ($arrow.double.l$)
  #proof[
    Assume that every Cauchy sequence contained in $F$ has a limit that is also an element of $F$.

    Let $x$ be an arbitrary limit point of $F$.
    Then we can find some sequence in $F$ that converges to $x$, where $x$ itself is not present in said sequence.

    Every convergent sequence must be Cauchy, so therefore, the limit $x$ must also be in $F$.

    Thus $F$ contains all its limit points.
  ]
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

  + The Cantor set is closed.
]

#solution[
  +
    False.
    Consider $RR setdiff {pi}$.
    This is open, since for any point $x$ we can just choose $epsilon.alt = abs(pi - x) / 2$, which is clearly non-zero and will be a strict subset of our original set.

  +
    False.
    We can see that the collection of sets ${k >= n mid(:) k in NN}_(n in NN)$ are all clearly closed, yet there cannot be any element in the infinite intersection.

  +
    True.
    Consider any point $x$, and then select the $epsilon.alt$-neighborhood surrounding $x$ such that it is a subset of the original set.
    Due to the density of rationals, there must exist a rational within that neighborhood.

  +
    False.
    Consider ${pi + 1/n mid(:) n in NN} union {pi}$.
    This is bounded below by $pi$, and above by $pi + 1$.
    It is infinite, yet no element can be rational.

  +
    True.
    Each $C_n$ is a finite union of closed intervals, and is thus a closed set.
    Then, $C$ is an infinite intersection of each $C_n$, so it is a closed set as well.
]

#exercise[3.2.7][
  Given $A subset.eq RR$, let $L$ be the set of all limit points of $A$.

  + Show that the set $L$ is closed.

  +
    Argue that if $x$ is a limit point of $A union L$, then $x$ is a limit point of $A$.
    Use this observation to furnish a proof for Theorem 3.2.12.
]

#solution[
  +
    Let $x in RR$ be a limit point of $L$.
    Then for any $epsilon.alt > 0$, it must be such that there is an element $x' in L$ such that $x' != x$ and $x' in V_(epsilon.alt)(x)$.

    Let $epsilon.alt' = 1/2min{abs(x - x'), abs(x + epsilon.alt - x'), abs(x' - x + epsilon.alt)}$.

    $x'$ itself is a limit point of $A$, so choose $a in A$ such that $a != x'$ and $a in V_(epsilon.alt')(x')$.

    By construction, we have chosen $V_epsilon.alt'(x') subset.eq V_epsilon.alt (x)$, as well as ensuring that $a != x$.
    Therefore, $x$ is also a limit point of $A$, and must be in $L$ as well.

    This shows that $L$ contains all its limit points and is therefore closed.

  +
    If $x$ is a limit point of $A union L$, then we know that for any $epsilon.alt$-neighborhood of $x$, it must contain some $x' in A union L$ such that $x' != x$.

    Either $x' in A$, or $x' in L$.
    In the case that $x' in L$, we can use part (a) to see that there must be some additional element $a != x$ in a $epsilon.alt'$-neighborhood of $x'$ contained within the original $epsilon.alt$-neighborhood, and thus we can choose $a in A$ instead.

    Therefore, every limit point $x$ of $A union L$ is also a limit point of $A$ itself.

    This shows that $A union L$ contains all its limit points and is therefore closed.

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
  + Definitely closed, since the closure of a set is always closed.

  + 
    Definitely open, since $B^complement$ is open, and $A setdiff B = A inter B^complement$.

  + Definitely open, since $A^complement union B$ is closed.

  + 
    Definitely closed, since this just equals $(A union A^complement) inter B = RR inter B = B$.

  +
    Definitely closed.

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
  +
    Consider any element $x in (union.big_(lambda in Lambda) E_lambda)^complement$.
    Then we know it must be that $x in.not union.big_(lambda in Lambda) E_lambda$.
    Therefore, it must be that $x$ cannot be in any given $E_lambda$, else it would appear in the union.
    Thus, for any $lambda$, we see that $x in.not E_lambda$, or alternatively, that $x in E_lambda^complement$.
    Thus, since $x in E_lambda^complement$ for every $lambda$, it must be in the intersection of all $E_lambda^complement$.
    So therefore, $(union.big_(lambda in Lambda) E_lambda)^complement subset.eq inter.big_(lambda in Lambda) E_(lambda)^complement$.

    Now, if $x in inter.big_(lambda in Lambda) E_(lambda)^complement$, then for all $lambda in Lambda$, $x in E_lambda^complement$.
    Alternatively, we see that $x in.not E_lambda$ for all $lambda$.
    Thus, if we take the union of all $E_lambda$, $x$ cannot be in that union.

    Thus we have that $inter.big_(lambda in Lambda) E_(lambda)^complement subset.eq (union.big_(lambda in Lambda) E_lambda)^complement$, so together we have that $(union.big_(lambda in Lambda) E_lambda)^complement = inter.big_(lambda in Lambda) E_(lambda)^complement$.

    The other law is very similar, so I skip it.

  +
    #set enum(numbering: "(i)")

    +
      _The union of a finite collection of closed sets is closed._
      #proof[
        Let $C_1, dots, C_n$ be the finite collection of closed sets.

        We know that $C_i^complement$ is open. Furthermore, from De Morgan's Laws, we know that $(union.big_(i=1)^n C_i)^complement = inter.big_(i=1)^n C_i^complement$, which we know from Theorem 3.2.3 to be open.

        Since the complement is open, we know that $union.big_(i=1)^n C_i$ must be closed by Theorem 3.2.13.
      ]
    
    +
      _The intersection of an arbitrary collection of closed sets is closed._
      #proof[
        Again, by De Morgan, we see that $(inter.big_(lambda in Lambda) C_lambda)^complement = union.big_(lambda in Lambda) C_lambda^complement$, which is open by Theorem 3.2.3.

        This shows that $inter.big_(lambda in Lambda) C_lambda$ must be closed by Theorem 3.2.13.
      ]
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
  We take countable to mean countably infinite.

  (i) cannot be realized, since we have a bounded, infinite set, so we know by Bolzano--Weierstrass that any countable sequence (a.k.a, an ordering) of the elements in our set must have a convergent subsequence.
  This must then converge to a limit point.

  (ii) can be realized.
  Consider the set $QQ inter [0,1]$.
  Any element in this set must be a limit point, since we can always find a sequence of rationals that approach it.

  (iii) cannot be realized, since otherwise, we could select a distinct rational number from within the isolated $epsilon.alt$-neighborhood of each isolated point, and this would indicate that there are uncountably many rationals.
]

#exercise[3.2.11][
  + Prove that $overline(A union B) = overline(A) union overline(B)$.

  + Does this result about closures extend to infinite unions of sets?
]

#solution[
  +
    Since $A, B subset.eq A union B$, any limit points of $A$ and $B$ must also be limit points of $A union B$.
    So therefore $overline(A) subset.eq overline(A union B)$, and $overline(B) subset.eq overline(A union B)$, so $overline(A) union overline(B) subset.eq overline(A union B)$.

    Now, we know that $overline(A union B)$ is the smallest closed set containing $A union B$.

    This is because, if any other closed set C contains $A union B$, it must contain the limit points of $A union B$ as well, so therefore $overline(A union B) subset.eq C$.

    Clearly, $A union B subset.eq overline(A) union overline(B)$, and finite union of closed sets is closed, so it must be the case that $overline(A union B) subset.eq overline(A) union overline(B)$.

    Putting the two parts together, we have that $overline(A union B) = overline(A) union overline(B)$.

  +
    This does not necessarily extend to infinite unions of sets, since we can no longer have the property that the infinite union is closed.

    Consider $A_n = {1 slash n}$.
    
    Clearly, the closure of each is simply ${1 slash n}$, since there are no limit points.

    However, the infinite union has a single limit point of $0$, which is not present in the infinite union of the closures.
]

#exercise[3.2.12\*][
  Let $A$ be an uncountable set and let $B$ be the set of real numbers that divides $A$ into two uncountable sets;
  that is, $s in B$ if both ${x mid(:) x in A "and" x < s}$ and ${x mid(:) x in A "and" x > s}$ are uncountable.
  Show $B$ is nonempty and open.
]

#solution[
  I produce two sets, $B_l$ and $B_r$.

  $
    B_l = {s in RR mid(:) thin (s, oo) inter A "is uncountable"}
    quad "and" quad
    B_r = {s in RR mid(:) thin (-oo, s) inter A "is uncountable"}
  $

  Clearly, $B_l inter B_r$ gives us $B$.
  
  Neither of them can be empty, since otherwise, we could produce the contradiction that $A$ is countable by constructing it from the countably infinite union of countable sets:
  $
    A = union.big_(n=1)^oo ((-oo, n) inter A) quad ==> quad A "is countable" #emoji.crossmark,\
    "or"\
    A = union.big_(n=1)^oo ((n, oo) inter A) quad ==> quad A "is countable" #emoji.crossmark.
  $
  Moreover, it must be that $B_l union B_r = RR$.
  Otherwise, there would exist some $x in RR$ such that $(x, oo) inter A$ and $(oo, x) inter A$ are both countable, giving us the contradiction that
  $
    A = ((x, oo) inter A) union ((-oo, x) inter A) union ({x} inter A) quad ==> quad A "is countable" #emoji.crossmark.
  $

  Note that if $l in B_l$, then any $l' < l$ is also in $B_l$.
  Similarly, any $r' > r in B_r ==> r' in B_r$.

  I claim both $B_l$ and $B_r$ are both open.

  For each, there are two cases.
  Either the set is unbounded and is therefore the entire set $RR$, or they are upper and lower bounded respectively.

  Let's focus on $B_l$.
  If it is upper bounded, then select $b_l = sup B_l$.
  I claim $b_l in.not B_l$.
  Otherwise, we could have the countably infinite union as follows:
  $
    union.big_(n=1)^oo ((b_l + 1/n, oo) inter A) = (b_l, oo) inter A "is countable" #emoji.crossmark.
  $
  This is a contradiction since $b_l in B_l$ implies that $(b_l, oo) inter A$ is uncountable.

  Similar logic applies for $B_r$.

  This shows that $B_l$ is an open interval of the form $(-oo, b_l)$, where $b_l$ can be $oo$, and $B_r$ is of the form $(b_r, oo)$.

  Since $B_l union B_r = RR$, we must have that $b_l > b_r$, else we would have a gap.

  Thus, $B = (b_r, b_l)$ and must be nonempty, and open as well, since it is a finite intersection of two open sets.
]

#exercise[3.2.13\*][
  Prove that the only sets that are both open and closed are $RR$ and the empty set $emptyset$.
]

#solution[
  It is easy to show that $emptyset$ and $RR$ are closed and open.

  #proof[
    Clearly, $emptyset$ has no limit points so it is closed.
    There are also no points that need to have $epsilon.alt$-neighborhoods around, so it is open.
    Since $RR$ is $emptyset^complement$, we have that $RR$ is also open and closed.
  ]

  For the other direction, I show that if $A$ is a nonempty set such that it is closed and open, then it must contain every real number.

  First, I show that $A$ can be neither upper nor lower bounded.

  #proof[
    AFSOC $A$ is upper bounded.
    Then we can find $s = sup A$ (since $A$ is nonempty).
    If $s in A$, then no $epsilon.alt$-neighborhood of $A$ will be contained in $A$.
    However, for any $epsilon.alt > 0$, we also know that there must be an $a in A$ such that $a > s - epsilon.alt$.
    Additionally, since $s in.not A$, we have that $a != s$, and therefore $s$ qualifies as a limit point of $A$.
    This is a *contradiction*, since we have now found a limit point such that it is not in $A$, so $A$ cannot be closed.

    Similar logic applies to show that $A$ cannot be lower bounded.

    Thus, $A$ is unbounded.
  ]

  Now, I show that if $x in RR$, then $x$ is a limit point of $A$.

  #proof[
    AFSOC that $x$ is not a limit point of $A$.
    Then there must exist some $epsilon.alt > 0$ where $V_epsilon.alt (x)$ does not intersect with $A$ other than at $x$.

    Clearly, $x in.not A$, since otherwise we could choose the same $epsilon.alt$ as a counterexample to $A$ being open.

    Now, observe that $V_epsilon.alt (x) subset.eq (l, r)$, where if $x' in (l, r)$ then $x' in.not A$.

    The largest such interval must be bounded, otherwise, this would imply that $A$ itself is bounded.
    Assume that $r$ is the infimum of all such upper bounds for the RHS of the interval.

    If $r in A$, then we can see that no $epsilon.alt$-neighorhood around $r$ is contained in $A$.

    If $r in.not A$, then we can see that $r$ is a limit point of $A$, which is a contradiction.

    Therefore, we have our overall contradiction, and it must be that $x$ is a limit point of $A$
  ]
  Thus, for arbitrary $x in RR$, $x$ is a limit point of $A$, and since $A$ is closed, $x in A$.

  This shows that any nonempty $A = RR$.
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
  +
    Clearly, if $overline(E) = E$, then $E$ is closed since the closure is always closed.

    If $E$ is closed, then it contains all its limit points $L$, such that $L subset.eq E$.
    Thus, $overline(E) = L union E = E$.

    Now, clearly, if $E^circle.small = E$, then $E$ is open, since every point in $E$ has an $epsilon.alt$-neighorhood contained in $E$.

    Now, if $E$ is open, then $E^circle.small$ contains every point in $E$, so $E subset.eq E^circle.small$.
    On the other hand, since $E^circle.small$ can only take points from $E$, then $E supset.eq E^circle.small$, so we have that $E^circle.small = E$.
  
  +
    Claim: $overline(E)^complement subset.eq (E^complement)^circle.small$
    #proof[
      First, assume that $x in overline(E)^complement$.
      This implies that $x in.not overline(E)$, or that $x in.not E union L$, where $L$ is the set of limit points of $E$.
      From this, we see that $x in E^complement inter L^complement$.
      If $x in L^complement$, then $x$ is not a limit point of $E$.
      This means that either is an interior point of $E$, or that there is an $epsilon.alt$-neighborhood of $x$ such that it is fully not in $E$.
      Alternatively, we can say that:
      $
        x in E "or there exists" epsilon.alt "such that" V_epsilon.alt (x) subset.eq E^complement. 
      $
      From this, we can see that it must be that $x in E^complement$, and there exists $V_epsilon.alt (x) subset.eq E^complement$.
      This is the definition of $(E^complement)^circle.small$.

      Therefore, $overline(E)^complement subset.eq (E^complement)^circle.small$.
    ]
    Claim: $overline(E)^complement supset.eq (E^complement)^circle.small$
    #proof[
      Assume $x in (E^complement)^circle.small$.
      Then, it must be in $E^complement$, and there exists $V_epsilon.alt (x) subset.eq E^c$.

      This implies that $x$ is not a limit point of $E$, so now we have that $x in.not L ==> x in L^complement$.

      Thus, we have $x in E^c inter L^c = (E union L)^complement = overline(E)^complement$.
    ]
  Thus, $overline(E)^complement = (E^complement)^circle.small$.

  Now, I claim that $(E^circle.small)^complement = overline(E^complement)$.

  Claim: $(E^circle.small)^complement subset.eq overline(E^complement)$
  #proof[
    Assume $x in (E^circle.small)^complement$.
    Then, $x in.not E^circle.small$.
    This implies that either $x in.not E$, or $x in E$ and for all $epsilon.alt$, $V_epsilon.alt (x) inter E^complement != emptyset$.
    This is the definition of a limit point of $E^complement$, so now we have that either $x in.not E ==> x in E^c$, or $x in L'$, where $L'$ is the set of limit points of $E^complement$.

    Thus, $x in E^complement union L' = overline(E^complement)$.
  ]
  Claim: $(E^circle.small)^complement supset.eq overline(E^complement)$
  #proof[
    Assume $x in overline(E^complement)$.
    Then $x in E^complement union L'$.
    If $x in L'$, then it cannot be in the interior of $E$, since there is no $epsilon.alt$ contained completely in $E$.

    Thus, we have that $x in.not E^circle.small$, so $overline(E^complement) subset.eq (E^circle.small)^complement$.
  ]
  Thus $(E^circle.small)^complement = overline(E^complement)$.
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
  +
    Consider the collection of sets $A_1, A_2, A_3, dots$, where $A_i = (a - 1/i, b + 1/i)$.

    Then, $[a,b]$ is clearly a subset of every set, so it will be in their intersection.
    In addition, no number outside of $[a,b]$ will be present in the intersection.

  +
    For the union of closed sets, consider the collection with $A_i = [a + 1/i, b]$.

    For the intersection of open sets, consider the collection with $A_i = (a, b + 1/i)$.

  +
    Consider the enumeration of rationals.
    Now, let each rational be enclosed in its own set.
    Each is a closed set, and the union of all of them gives us exactly the rationals and nothing else.

    Now, consider a set containing just a rational, and now take the complement.
    This is an open set.
    The intersection of all such complements gives us the irrationals, as it will give us all real numbers except the rationals.
]

== Compact Sets

#exercise[3.3.1][
  Show that if $K$ is compact and nonempty, then $sup K$ and $inf K$ both exist and are elements of $K$.
]

#solution[
  If $K$ is compact and nonempty, then it must be bounded.
  Since it is bounded, it must be upper and lower bounded.
  This means that $sup K$ and $inf K$ both exist.

  We also know that $K$ is closed.
  Thus, we know from properties of supremum and infimum that they must be limit points of $K$, and therefore must be contained within $K$.
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
  + Not compact, consider the natural enumeration of natural numbers.

  + Not compact, consider any sequence converging to $sqrt(2) / 2$.

  +
    Compact.
    I can't think of a proof that relies on the sequence definition, but it is clearly bounded, and also closed, since it is the infinite intersection of closed sets.

  +
    Not compact, consider the natural enumeration as a sequence, and we see that it is strictly monotonically increasing and bounded by our results on series.
    Therefore, the limit cannot exist in the set, as otherwise we would find an element strictly greater than the limit.


  +
    By Bolzano--Weierstrass any sequence with elements from this set should have a convergent subsequence.

    I claim that any subsequence that converges must converge to an element in this set.

    #proof[
      AFSOC that we have a subsequence that converges to an $x$ not in our set.

      Clearly, our $x$ must be be in the interval $[1 slash 2, 1]$.

      We find the closest two elements in our set, let's call it $n/(n+1)$ and $(n+1)/(n+2)$.
      (If $x$ were to be $1$ or greater, then this would not be possible.
      This is a result using the Archimedean property, and if $x > 1$, then we would end up either trying to find a natural number greater than infinity, or a natural number smaller than a negative number.)


      Set $epsilon.alt$ to be $1/2 min{x - n/(n+1), (n+1)/(n+2) - x}$, and now notice that there can be no element in our set within that $epsilon.alt$-neighborhood of $x$.
      
      This contradicts the definition of convergence.

      Therefore, every subsequence must converge to a value within the set.
    ]
]

#exercise[3.3.3][
  Prove the converse of Theorem 3.3.4 by showing that if a set $K subset.eq RR$ is closed and bounded, then it is compact.
]

#solution[
  Take any sequence $(x_n)$ with elements from the set $K$.

  Since our set is bounded, we can apply Bolzano--Weierstrass to find a convergent $(x_n_k)$ with elements from $K$.

  Now, there are two cases.

  *Case 1:* The subsequence converges to a limit $x$ already present in our sequence, and we get that $x in K$ for free.

  *Case 2:* The subsequence converges to a limit $x$ not in our original sequence.
  Now, notice, that $x$ satisfies the definition for a limit point.
  Since our set is closed, we then get the result that $x in K$.

  So, in either case, we get that any $(x_n)$ has a subsequence that converges to a point $x in K$, which is exactly the definition for a compact set.
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
  +
    *Definitely compact* and closed, since the intersection will stay bounded, and the intersection of closed sets is still closed.

  +
    $F^complement union K^complement$ will be unbounded (since it is the complement of a bounded set).
    Thus, it is not compact, but the closure is still *definitely closed*.

  +
    We have *no guarantees*, other than boundedness.
    As an example, consider $K = [-1, 2]$, and $F = (0, 1)^complement$.
    Then $K setdiff F = (0,1)$, which is open, not closed, and thus not compact.

  + This is definitely closed, and also bounded, so it must be *compact*.
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
  +
    True.
    The intersection of bounded sets cannot be unbounded, and will be bounded (or empty).
    We also know that the arbitrary intersection of closed sets is closed.
    So the resulting set is either empty (and thus compact), or nonempty and compact.

  +
    False, consider the collection of compact sets of the form:
    $
      {[1 slash n, 1 - 1 slash n] mid(:) n in NN, n >= 2}.
    $
    The countable union gives us $(0,1)$, which is clearly not closed and therefore not compact.

  +
    False, consider $A = (0, 1)$, $K = [0, 1]$.
    Then the intersection is $(0,1)$.

  +
    False, since the closed set could be unbounded, for example, ${[n, oo] mid(:) n in NN}$.
    The countable intersection here is the empty set.
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
  +
    True, since the compact set is bounded, then it must have a supremum.
    It must also contain the supremum, since we can produce a sequence that converges to the supremum.
    Thus, the supremum must be contained in the set and is therefore a maximum.

    This is not true if it is just closed, since we can have two closed sets that are not upper bounded.

  +
    True, $A + B$ will stay bounded, and for every sequence in $A + B$, by Bolzano--Weierstrass it will have a convergent subsequence.
    For the subsequence, we can split it into the addition of two sequences from $A$ and $B$ respectively.
    Each will converge to $a$ and $b$, which exist in $A$ and $B$ respectively, so by ALT the limit of our original subsequence is $a + b$, which we know must exist in $A + B$.

    This is not true if we have closed, since we can then have two unbounded but closed sets:
    $
      A = NN, quad B = {-n + 1 slash n mid(:) n in NN}.
    $
    We can produce a sequence in $A + B$ where $(x_n) = 1 slash n$, which we know to converge to $0$.
    However, $0$ is clearly not an element of $A + B$, as it would require $m - n + 1 slash n = 0$ which cannot be true for $m, n in NN$.
  
  +
    For finite sets, this must be true, as we can show by induction that every $A_n$ has a shared common element.
    Therefore, the infinite intersection should also have that shared common element.

    For compact sets, this must also be true.
    We can invoke the Nested Compact Set property, by iteratively constructing $K_n = inter.big_(i=1)^n A_i$, and noting that we now have a nested sequence of nonempty compact sets.

    The infinite intersection of this nested sequence is thus nonempty.

    For closed sets, this is not necessarily true, just take $A_n = [n, oo]$.
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
  +
    If $s in C_1$, then clearly we can just take $x_1 = 0$, and $y_1 = s$.
    If $s in [1, 4 slash 3] union [5 slash 3, 2]$, then we can take $x_1 = 1$ and $y_1 = s - 1$.

    Now, notice that $[1 slash 3, 2 slash 3]$ can be covered by $x_1 = 1 slash 3$ and $y_1$ from $[0, 1 slash 3]$.
    Likewise, $[4 slash 3, 5 slash 3]$, can be covered by $x_1 = 2 slash 3$ and $y_1 in [2 slash 3, 1]$.

    To show that arbitrary $x_n, y_n$ from $C_n$ can cover $s$, I use an inductive argument.

    Assume that we can find $x_n, y_n$ such that $x_n + y_n = s in [0,2]$.

    Now, we note the property that if $x in C_n$, then $x slash 3 in C_(n+1)$, as well as $(x + 2) / 3 in C_(n+1)$.

    Assume we have arbitrary $s in [0,2]$.
    Now, we have three cases:
    $
      s = cases(
        s' slash 3 &quad "for" s in [0, 2 slash 3],
        (s' + 2) slash 3 &quad "for" s in (2 slash 3, 4 slash 3],
        (s' + 4) slash 3 &quad "for" s in (4 slash 3, 2].
      ),
      quad "where" s' in [0,2].
    $
    Now, we can see that there must exist $x_n, y_n in C_n$ such that $x_n + y_n = s'$.

    From our three cases, we can now see that we will have:
    $
      s = cases(
        x_n / 3 + y_n / 3 &quad "for" s in [0, 2 slash 3],
        (x_n + 2) / 3 + y_n / 3 &quad "for" s in (2 slash 3, 4 slash 3],
        (x_n + 2) / 3 + (y_n + 2) / 3 &quad "for" s in (4 slash 3, 2].
      ).
    $
    In all cases, both terms are members of $C_(n+1)$.

    Thus by induction, we can always find $x_n, y_n$ such that $x_n + y_n = s in [0,2]$.

  +
    $(x_n)$ is bounded, so it possesses a convergent subsequence.

    Looking at the convergent subsequence, let's say that $(x_n_k) -> x$.

    Since $C_1$ is closed, it must be that $x in C_1$.
    I claim that $x in C_n$ for every $n in NN$.

    To see this, just consider the tail of the same subsequence such that $n_k >= n$, and note that it must share the same $x$ as its limit.

    Since every $C_n$ is compact, it must be that $x in C_n$ for all $n in NN$.

    Thus, since $C = inter.big_(n=1)^oo C_n$, it must be that $x in C$.

    If we define $y_n = s - x_n$, then for the subsequence $(x_n_k)$, the analogous subsequence $(y_n_k) -> y = s - x$ by ALT.

    By similar reasoning to above, we see that $y in C$ as well.

    Therefore, we have produced $x, y in C$ such that $x + y = s$.
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
  +
    I claim that absolute value of a closed set gives a closed set.
    #proof[
      Let $X$ be closed.
      Let $X' = {abs(x) mid(:) x in X}$.

      Observe arbitrary limit point $abs(a)$ of $X'$.
      Now, there must be an $(abs(a_n)) -> abs(a)$.

      The original sequence in $abs(a_n)$ in $X$ must either have infinite negative terms, infinite non-negative terms, or both.

      In any case, we can pick out a subsequence of that sequence to see that it will approach $a$ or $-a$, which indicates that $a$, $-a$, or both are in $X$.

      This implies that $abs(x) in X'$, so all limit points of $X'$ are contained within it, and $X'$ is closed.
    ]

    Clearly, the negation of a compact set is compact, and by Exercise 3.3.6, the addition of two compact sets is compact.

    Finally, the absolute value (as just proved) of a compact set must be closed and bounded and therefore still compact.

    This immediately gives us the result that it must contain its infimum.

    So, if $K$ and $L$ are disjoint, then $d != 0$, since that would imply there are two elements $x = y$, which contradicts the disjointness of the two sets.

  +
    Consider the closed but unbounded sets $K = NN$ and $L = {n + 1 slash n mid(:) n in NN, n >= 2}$.

    The distance between any two elements approaches $0$, but there are no elements in common.
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
  +
    Let $I_0$ be the proposed closed interval, such that $K subset.eq I_0$.
    Note that due to our assumption, $I_0 inter K$ covered by ${O_lambda mid(:) lambda in Lambda}$ does not have a finite subcover.
    
    Now, select $I_(i+1)$ in the following way:
    
    Bisect $I_i$ into two closed intervals, and call the left half $L_i$, and the right half $R_i$.
    Both have $abs(L_i) = abs(R_i) = abs(I_i) slash 2$, and at least one of the two must be such that $L_i inter K$ and $R_i inter K$ cannot be covered by a finite subcover from ${O_lambda mid(:) lambda in Lambda}$.
    (Otherwise, we could find a finite subcover for $I_i$.)

    Select any one of the half intervals that does not have a finite subcover as described above.

    Continue in this manner.
    Notice that no matter the initial length of $I_0$, we will eventually find an interval smaller than any positive value.
    Therefore $lim_(n->oo)abs(I_n) = 0$.
  
  +
    This follows directly from the Nested Interval Property.
    We should also note that at any point, $I_n inter K$ cannot be empty, otherwise we would have the trivial finite subcover.

    So the countable intersection is both nonempty and shares an element with $K$.

  +
    Since $x in K$ and also $x in I_n$ for all $n$, it must be the case that some $O_lambda_0$ from our open cover contains $x$.

    This implies that for some $epsilon.alt > 0$, we have that $V_epsilon.alt (x) subset.eq O_(lambda_0)$.

    However, we can also find an interval $I_n$ such that $abs(I_n) < epsilon.alt$, such that $x in I_n$ and also $x in I_n inter K$.
    This implies that $I_n subset.eq V_(epsilon.alt) (x) subset O_lambda_0$.

    This is a *contradiction*, since $O_lambda_0$ itself functions as a finite subcover for $I_n inter K$, but we chose $I_n$ so that this wouldn't happen.

    This means our original assumption that there could be no finite subcover is incorrect.

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
  +
    Clearly, we can see that $a in S$, since the single point $a$ would need to be covered by some open set in the cover.

    $S$ is also clearly bounded, since it is a subset of a bounded interval.

    Therefore, we can select $s = sup S$.

  +
    Note that the largest $s$ can be is $b$.

    Now, we check if $s$ is contained in $S$.

    Clearly, $s$ must be covered by some open set in the cover.
    It is also the case that this open set must cover some points in a small $epsilon.alt$-neighborhood around $s$.

    We already know that any point less than $s$ must be able to be covered with a finite subcover.
    So, we can just add our open set covering $s$ to our finite subcover and see that $s in S$.

    Within that small $epsilon.alt$-neighborhood, it must be that points greater than $s$ should also be covered by that same open set.

    However, if there were points greater than $s$ covered by the open set, then $s$ would no longer be the supremum.

    Therefore, there cannot be any points greater than $s$ within $[a, b]$, implying that $s = b$.

  +
    Since $K$ is closed and bounded, we can find its upper and lower bounds $a$ and $b$.

    Note further, that these points must be contained within $K$.

    Form the interval $[a,b]$, and define $S$ as the set of all $x in [a,b] inter K$ such that $[a, x] inter K$ has a finite subcover from ${O_lambda mid(:) lambda in Lambda}$.

    By similar argument from part (a), $a in S$, so $s = sup S$ must exist.
    
    AFSOC $s < b$.

    If there exists a small $epsilon.alt$-neighborhood around $s$ such that it is fully contained in $K$, then we can use the argument from part (b).

    If it is instead the case that there is some $(s, r)$ such that $(s, r) inter K$ is empty, then we can proceed in the following manner:

    We observe $[r, b] inter K$.
    This is a compact set, thus it contains its infimum.

    Call the infimum $y$, and note that $s < y <= b$.

    We then work with the following interval:
    $
      [a, y] inter K &= ([a, s] union (s, y) union {y}) inter K\
      &= [a, s] inter K union {y}.
    $
    We know that $y$ must be covered by some $O_lambda$.

    Let's just add that $O_lambda$ to the finite subcover for $[a,s] inter K$, and we arrive at our *contradiction*.

    Therefore, it must be the case that $s = b$, so therefore, we have a finite subcover for our entire compact set.
]

#exercise[3.3.11][
  Consider each of the sets listed in Exercise 3.3.2.
  For each one that is not compact, find an open cover for which there is no finite subcover.
]

#solution[
  +
    $NN$: Consider the open cover where there is simply an interval $(n - 1/2, n + 1/2)$ around each natural number

  +
    $QQ inter [0,1]$:

    Consider $(sqrt(2) / 2, 2)$, and the set of open intervals ${(-1, sqrt(2) / 2 - 1/n) mid(:) n in NN}$

  + The Cantor set: compact.

  +
    ${1 + 1 slash 2^2 + 1 slash 3^2 + dots.c + 1 slash n^2 mid(:) n in NN}$:

    Consider the set of open sets ${(0, s_n) mid(:) s_n in S}$, where $S$ is the set of partial sums as seen above and $s_n$ is the natural enumeration.

  +
    ${1, 1 slash 2, 2 slash 3, 3 slash 4, 4 slash 5, dots}$: compact.
]

#exercise[3.3.12][
  Using the concept of open covers (and explicitly avoiding the Bolzano--Weierstrass Theorem), prove that every bounded infinite set has a limit point.
]

#solution[
  AFSOC that there are no limit points in our set $S$.

  Then, since we know that a closed set is one that contains all its limit points, we see that our set is closed.

  Therefore, since it is closed and bounded, our set is compact.

  Now, since there are no limit points, we know that for every point in our set $x$, there exists an $epsilon.alt$-neighborhood for which the intersection with $S$ gives us ${x}$.

  Choose all the $epsilon.alt$-neighborhoods centered at individual points as our open cover.

  Clearly, this covers all points, but any finite subcover will always be missing infinitely many points.

  This is a *contradiction*, since we determined that any open cover of a compact set will have a finite subcover.

  Thus, it must be that $S$ has at least one limit point.
]

#exercise[3.3.13][
  Let's call a set _clompact_ if it has the property that every _closed_ cover (i.e., a cover consisting of closed sets) admits a finite subcover.
  Describe all of the clompact subsets of $RR$.
]

#solution[
  A set is clompact if and only if it is finite.

  ($=>$)

  Pick the closed cover such that every point $x$ in our set is covered by the closed set ${x}$.
  Now, we choose our finite subcover, and we immediately get that our set can only contain finitely many points.

  ($arrow.double.l$)

  For every point $x$, simply select a closed set covering it, and in the end we will have finitely many closed sets.
]

== Perfect Sets and Connected Sets

#exercise[3.4.1][
  If $P$ is a perfect set and $K$ is compact, is the intersection $P inter K$ always compact?
  Always perfect?
]

#solution[
   The intersection is always compact, since a perfect set is closed.
   Thus the intersection will still be closed and bounded and therefore compact.

   The set will not always be perfect.
   As an example, consider $P = [0,1]$, and $K = {1}$.
   The intersection is an isolated point and thus not perfect.
]

#exercise[3.4.2][
  Does there exist a perfect set consisting of only rational numbers?
]

#solution[
  No, since a perfect set must be uncountable.
]

#exercise[3.4.3][
  Review the portion of the proof given in Example 3.4.2 and follow these steps to complete the argument.

  + 
    Because $x in C_1$, argue that there exists an $x_1 in C inter C_1$ with $x_1 != x$ satisfying $abs(x - x_1) <= 1 slash 3$.

  +
    Finish the proof by showing that for each $n in NN$, there exists $x_n in C inter C_n$, different from $x$, satisfying $abs(x - x_n) <= 1 slash 3^n$.
]

#solution[
  + 
    Just choose the closest end-point of the intervals that make up $C_1$ (that isn't $x$ itself).
    The furthest away it can be is thus $1/6 < 1/3$, or exactly $1 slash 3$ if $x$ is an endpoint.
    We also know that $C$ contains all such endpoints.

  +
    The same logic using endpoints can be applied for all $n$, and this gives us a sequence for any $x$ such that the distance $abs(x_n - x) <= 1 slash 3^n$.
    This proves that $x$ is a limit point, and thus not isolated.
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
  #TODO[skipped]
]

#exercise[3.4.5][
  Let $A$ and $B$ be nonempty subsets of $RR$.
  Show that if there exist disjoint open sets $U$ and $V$ with $A subset.eq U$ and $B subset.eq V$, then $A$ and $B$ are separated.
]

#solution[
  If $U$ and $V$ are disjoint open sets, then the limit point of one set cannot exist in the other set.
  WLOG, AFSOC assume $U$ had a limit point $x$ in $V$.

  Now there exists a ball around $x$ fully contained in $V$, but also from the definition of limit point, there will always be a point $x' != x$ in $U$ within any ball around $x$, contradicting the initial condition that $U$ and $V$ are disjoint.

  Thus, the closure of any one set and the original second set will still be disjoint.

  The closure of any subset of the original set will be a subset of the original set, so $A$ and $B$ must also be separated.
]

#exercise[3.4.6][
  Prove Theorem 3.4.6.
]

#solution[
  ($=>$)
  I prove the contrapositive.
  Assume that there exists a non-trivial partition $A union B = E$, with the property that all convergent sequences with all elements in $A$ have a limit that cannot be in $B$, and vice-versa.

  Thus, all limit points of $A$ also cannot be in $B$, and $overline(A) inter B = emptyset$.
  Similar logic applies for all convergent sequences fully contained in $B$.

  Thus, $A$ and $B$ must be separated, which implies that $E$ is disconnected.

  ($arrow.double.l$)
  Assume that for all non-trivial partitions $A union B = E$, there always exists a convergent sequence fully contained in one set with a limit in the other.

  The limit must be a limit point, and thus, the closure of the set containing the convergent sequence contains said limit point.
  The intersection must be non-empty, which implies that all partitions cannot be separated, and thus, $E$ must be connected.
]

#exercise[3.4.7][
  A set $E$ is _totally disconnected_ if, given any two distinct points $x, y in E$, there exist separated sets $A$ and $B$ with $x in A$, $y in B$, and $E = A union B$.

  + Show that $QQ$ is totally disconnected.

  + Is the set of irrational numbers totally disconnected?
]

#solution[
  +
    There will always exist an irrational number $x$ between any two distinct rationals, just partition $QQ$ based on rationals greater and lesser than $x$.
  
  +
    There will always exist a rational number $x$ between any two distinct irrationals.
    Partition the irrationals based on those greater and lesser than $x$.
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
  +
    The length of the intervals in $C_n$ is exactly $1 slash 3^n$.
    So just find $N$ large enough such that #box[$1 slash 3^N < epsilon.alt$].
  
  +
    Since it must be the case that there is a $C_N$ after which $y-x$ cannot exist in the same interval, then it must be the case that there is a $z in.not C_N$ such that $x < z < y$.
    Thus in $z in.not C$ as well.
    We can then partition $C$ into all those that are greater or less than $z$.
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

#solution[
  +
    Clearly $F$ must be closed, since $O$ is the countable union of open sets and thus must be open itself.

    $F$ must also not contain any rational numbers by construction, so if there are any elements, it must be irrational.

    To prove $F$ is non-empty, we should use the Nested Compact Set Property.

    First, using De Morgan's Law, we see that $F = inter.big_(n=1)^oo V_(epsilon.alt_n) (r_n)^complement$.

    Let $C_n = inter.big_(m=1)^n V_(epsilon.alt_m) (r_m)^complement inter [0, 2]$.
    This is clearly compact, since $V_(epsilon.alt_n) (r_n)^complement$ is closed, and nested.

    To argue that it is nonempty, consider the compact set of points:
    $
      A_n = {i slash 2^n mid(:) i in ZZ_+, 0 <= i <= 2^(n+1)}.
    $
    This is a subset of $[0,2]$, and has $2^(n+1) + 1$ elements.

    Since every $V_(epsilon.alt_m) (r_m)$ has a length of $1 slash 2^(m-1)$ max, it can contain at most $2^(n - m + 1)$ elements of $A_n$.

    Thus, the number of elements in the union is as follows:
    $
      abs(A_n inter union.big_(m=1)^n V_(epsilon.alt_m) (r_m)) <= sum_(m=1)^n 2^(n - m + 1) = sum_(i=1)^n 2^i = 2^(n+1) - 2.
    $
    Thus, we can see the following relationship:
    $
      C_n &= inter.big_(m=1)^n V_(epsilon.alt_m) (r_m)^complement inter [0, 2] supset.eq inter.big_(m=1)^n V_(epsilon.alt_m) (r_m)^complement inter A_n\
      &supset.eq A_n inter (union.big_(m=1)^n V_(epsilon.alt_m) (r_m))^complement = (A_n inter A_n^complement) union (A_n inter (union.big_(m=1)^n V_(epsilon.alt_m) (r_m))^complement)\
      &= A_n inter (A_n^complement union (union.big_(m=1)^n V_(epsilon.alt_m) (r_m))^complement) = A_n inter (A_n inter (union.big_(m=1)^n V_(epsilon.alt_m) (r_m)))^complement\
      &= A_n setdiff (A_n inter (union.big_(m=1)^n V_(epsilon.alt_m) (r_m))).
    $
    From our previous result, we know that this has at least $3$ elements in it, so therefore, for any $C_n$, it has at least $3$ elements in it and is therefore non-empty.

    Thus, we have our sequence of nested, compact, and non-empty sets, so their intersection must be non-empty.
    Their intersection is a subset of $F$, so $F$ must also be non-empty.
  
  +
    $F$ does not contain any nonempty open intervals, since between any endpoints of any interval there is a rational number, which cannot be in the interval.

    $F$ must therefore be totally disconnected as well.

  +
    It is possible that $F$ is not perfect.
    To see this, we can order the rationals in such a way that for any rational close to $sqrt(2)$, it is far enough down the list such that the $epsilon.alt$-neighborhood is small enough to not include $sqrt(2)$.
    I don't rigorously justify this enumeration, but it should be possible.

    Thus, $sqrt(2) in F$, but there is no other irrational close to it and it is an isolated point.

    To modify the construction such that $F$ is perfect, we simply consider the following iterated construction.

    When subtracting an open interval, if it overlaps with a current closed interval, only subtract it if its length is less than $1/4$ of the closed interval length.
    
    Otherwise, select some other rational such that it is completely contained within another open interval, or such that it is far enough away from all other selected rationals.

    This makes it such that at any stage, the closed interval intersected with the final set cannot have length 0 and thus have only one isolated irrational.

    This is a very loose argument based on length which I don't make rigorous, but with the concept of measure this becomes rigorous.
]

== Baire's Theorem

#exercise[3.5.1][
  Argue that a set $A$ is a $G_delta$ set if and only if its complement is an $F_delta$ set.
]

#solution[
  This follows immediately from De Morgan's Laws.
]

#exercise[3.5.2][
  Replace each #blank(3em) with the word _finite_ or _countable_, depending on which is more appropriate.

  + The #blank(3em) union of $F_sigma$ sets is an $F_sigma$ set.
  
  + The #blank(3em) intersection of $F_sigma$ sets is an $F_sigma$ set.
  
  + The #blank(3em) union of $G_delta$ sets is a $G_delta$ set.
  
  + The #blank(3em) intersection of $G_delta$ sets is a $G_delta$ set.
]

#solution[
  + *Countable*, since a countable product of countable sets is countable.

  +
    *Finite*. I don't have a good proof for this off the top of my head.

  + Also *finite*.

  + *Countable*.
]

#exercise[3.5.3][
  (This exercise has already appeared as Exercise 3.2.15.)

  + Show that a closed interval $[a,b]$ is a $G_delta$ set.

  +
    Show that the half-open interval $(a,b]$ is both a $G_delta$ and an $F_sigma$ set.

  +
    Show that $QQ$ is an $F_sigma$ set, and the set of irrationals $II$ forms a $G_delta$ set.
]

#solution[
  + Choose open intervals of the form $(a - 1/n, b + 1/n)$.

  +
    $F_sigma$: choose closed intervals of the form $[a + 1/n, b]$.

    $G_delta$: choose open intervals of the form $(a, b + 1/n)$.

  +
    For $QQ$, choose the countable closed sets containing just a single rational, enumerating through all rationals.

    For $II$, we can now just rely on Exercise 3.5.1.
]

#exercise[3.5.4][
  Starting with $n = 1$, inductively construct a nested sequence of _closed_ intervals $I_1 supset.eq I_2 supset.eq I_3 supset.eq dots.c$ satisfying $I_n subset.eq G_n$.
  Give special attention to the issue of endpoints of each $I_n$.
  Show how this leads to a proof of the theorem.
]

#solution[

]

#exercise[3.5.5][
  Show that it is impossible to write
  $
    RR = union.big_(n=1)^oo F_n,
  $
  where for each $n in NN$, $F_n$ is a closed set containing no nonempty open intervals.
]

#solution[

]

#exercise[3.5.6][
  Show how the previous exercise implies that the set $II$ of irrationals cannot be an $F_sigma$ set, and $QQ$ cannot be a $G_delta$ set.
]

#solution[

]

#exercise[3.5.7][
  Using Exercise 3.5.6 and versions of the statements in Exercise 3.5.2, construct a set that is neither in $F_sigma$ nor in $G_delta$.
]

#solution[

]

#exercise[3.5.8][
  Show that a set $E$ is nowhere-dense in $RR$ if and only if the complement of $overline(E)$ is dense in $RR$.
]

#solution[

]

#exercise[3.5.9][
  Decide whether the following sets are dense in $RR$, nowher-dense in $RR$, or somewhere in between.

  + $A = QQ inter [0,5]$.

  + $B = {1 slash n mid(:) n in NN}$.
  
  + the set of irrationals.

  + the Cantor set.
]

#solution[

]

#exercise[3.5.10][
  Finish the proof by finding a contradiction to the results in this section.
]

#solution[

]

== Epilogue

No exercises in this section.