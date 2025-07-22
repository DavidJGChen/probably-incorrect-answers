#import "@local/david:1.0.1": *

== Discussion: The Irrationality of $sqrt(2)$

No exercises in this section.

== Some Preliminaries

#exercise[1.2.1][
  +
    Prove that $sqrt(3)$ is irrational.
    Does a similar argument work to show $sqrt(6)$ is irrational?
  +
    Where does the proof of Theorem 1.1.1 break down if we try to use it to prove $sqrt(4)$ is irrational?
]
#solution[
  +
    Assume for sake of contradiction (AFSOC) that $sqrt(3) in QQ$.
    This implies that $sqrt(3) = p/q$, where $p in ZZ$ and $q in NN$, and $gcd(p, q) = 1$.

    Therefore, $p^2 = 3 q^2$, which means that $3$ divides $p^2$.

    Since $3$ is prime, $p$ must be divisible by $3$. Therefore for some $k in ZZ$,
    $
      p = 3k => 9k^2 = 3q^2 => 3k^2 = q^2.
    $
    This implies that $q^2$ and thus $q$ is also divisible by $3$, which is a contradiction.

    A similar proof does not quite work for $sqrt(6)$ and needs to be adjusted, since $6$ is not prime and thus we cannot directly say that $6$ divides $p^2$ implies $6$ divides $p$.
  +
    It is exactly the step where we try to show that $4$ divides $q^2$ implies that $4$ divides $q$.
    In fact, if we have just that $2$ (and not $4$) divides $q$, then clearly $4$ still divides $q^2$.
]

#exercise[1.2.2][
  Show that there is no rational number $r$ satisfying $2^r = 3$.
]

#solution[
  AFSOC that there does exist $r = p/q$, with coprime $p in ZZ$ and $q in NN$.

  Then $2^r = 2^(p slash q) = 3$, which implies that $2^p = 3^q$.
  This is false.
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

#solution[
  #TODO[skipped]
]

#exercise[1.2.4][
  Produce an infinite collection of sets $A_1, A_2, A_3, dots$ with the property that every $A_i$ has an infinite number of elements, $A_i inter A_j = emptyset$ for all $i != j$, and $union.big_(i=1)^oo A_i = NN$.
]

#solution[
  Assume we have infinite primes. Since they are a subset of $NN$, they are enumerable ($p_1 = 2, p_2 = 3, p_3 = 5, p_4 = 7, dots$).

  Also assume we have unique prime decomposition.

  Now let
  $
    A_i = {n in NN mid(|) p_i "is the smallest prime in the decomposition of" n },
  $
  with the additional modification that $A_1$ includes $1$.

  They are all disjoint, since there can only be one smallest prime factor of each number.

  Their union forms the natural numbers, since every natural number $n$ has a unique finite prime factor decomposition, and by the the fact that every non-empty subset of the natural numbers will have a smallest element, $n$ must be an element of some $A_i$.

  Clearly, every set is also infinite, since we can consider that each $A_i$ contains the powers of $p_i$.
]

#exercise[1.2.5 (De Morgan's Laws)][
  Let $A$ and $B$ be subsets of $RR$.
  +
    If $x in (A inter B)^complement$, explain why $x in A^complement union B^complement$.
    This shows that $(A inter B)^complement subset.eq A^complement union B^complement$.
  +
    Prove the reverse inclusion $(A inter B)^complement supset.eq A^complement union B^complement$, and conclude that $(A inter B)^complement = A^complement union B^complement$.
  +
    Show $(A union B)^complement = A^complement inter B^complement$ by demonstrating inclusion both ways.
]

#solution[
  #TODO[skipped]
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

#solution[
  + #TODO[part skipped]
  + #TODO[part skipped]
  + #TODO[part skipped]
  +
    Using the "unremarkable identity", for any $a$ and $b$,
    $
      abs(a) &= abs(a - b + b)\
      &<= abs(a-b) + abs(b).
    $
    So first we have $abs(a) - abs(b) <= abs(a-b)$.
    Next, we proceed the same exact way using $abs(b)$, and we get that $abs(b) - abs(a) <= abs(b-a)$.

    Since $abs(a-b) = abs(b-a)$, we can combine the above two facts and get that
    $
      abs(abs(a) - abs(b)) <= abs(a - b).
    $
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

#solution[
  +
    $A inter B = [1,2]$. $f(A) = [0, 4]$, and $f(B) = [1, 16]$.
    So therefore, $f(A) inter f(B) = [1, 4]$.

    $f(A inter B) = [1,4]$ as well.
    So equality holds.

    $A union B = [0, 4]$, so $f(A union B) = [0, 16] = f(A) union f(B)$. 
    
    Therefore equality holds in both cases.
  +
    Let $A = {1}$, and $B = {-1}$.

    Then $A inter B = emptyset$, but $f(A) = {1} = f(B)$, so $f(A) inter f(B) = {1} != emptyset$.
  +
    For arbitrary $y in g(A inter B)$, we have that $y = g(x)$, where $x in A inter B$.

    Therefore, $x in A$ and $x in B$, which implies that $g(x) in g(A)$ and $g(x) in g(B)$.

    This further implies that $y = g(x) in g(A) inter g(B)$.

    Thus we have that $g(A inter B) subset.eq g(A) inter g(B)$.

    This doesn't work the other way around, since we could have some $y = g(x) = g(z)$, where $x != z$, and $x in A$ and $z in B$, and neither exists in the other set.
  +
    My conjecture is that
    $
      g(A inter B) = g(A) union g(B).
    $
    To show this, I first prove that $g(A union B) subset.eq g(A) union g(B)$, then the other way around.

    *$g(A union B) subset.eq g(A) union g(B)$:*

    For arbitrary $y in g(A union B)$, we have that $y = g(x)$ such that $x$ in $A$ or $B$.
    In either case, it must be such that $y$ is in  $g(A)$ or $g(B)$ and thus be in $g(A) union g(B)$.

    *$g(A) union g(B) subset.eq g(A union B)$:*

    If $y in g(A)$, then we have that $y = g(x)$ where $x in A$, and therefore $x in A union B ==> y = g(x) in g(A union B)$.
    Same for $y in g(B)$.

    Thus we have proved both directions and shown set equality.
]

#exercise[1.2.8][
  Here are two important definitions related to a function $f: A -> B$.
  The function $f$ is _one-to-one_ (1--1) if $a_1 != a_2$ in $A$ implies that $f(a_1) != f(a_2)$ in $B$.
  The function $f$ is _onto_ if, given any $b in B$, it is possible to find an element $a in A$ for which $f(a) = b$.

  Give an example of each or state that the request is impossible:
  + $f: NN -> NN$ that is 1--1 but not onto.
  + $f: NN -> NN$ that is onto but not 1--1.
  + $f: NN -> ZZ$ that is 1--1 and onto.
]

#solution[
  #TODO[skipped]
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

#solution[
  + #TODO[part skipped]
  +
    Let $x in g^(-1)(A inter B)$.
    This implies that $g(x) in A inter B$, which implies that $x in g^(-1)(A)$ and $x in g^(-1)(B)$.

    From this we can conclude that $x in g^(-1)(A) inter g^(-1)(B)$.

    Going backwards, we see that if $x in g^(-1)(A) inter g^(-1)(B)$, then it must be the case that $g(x) in A$ and $g(x) in B$, which leads us to conclude that $x in g^(-1)(A inter B)$.

    For union, we have if $x in g^(-1)(A union B)$, then $g(x) in A union B$.
    From the two cases, we will have that either $x in g^(-1)(A)$ or $x in g^(-1)(B)$, which lets us conclude that $x in g^(-1)(A) union g^(-1)(B)$.

    Backwards, we have that either $g(x) in A$ or $g(x) in B$ depending on the cases, so therefore $g(x) in A union B$ and thus $x in g^(-1)(A union B)$.
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

#solution[
  #TODO[skipped]
]

#exercise[1.2.12][
  Let $y_1 = 6$, and for each $n in NN$ define $y_(n+1) = (2y_n - 6) slash 3$.
  +
    Use induction to prove that the sequence satisfies $y_n > -6$ for all $n in NN$.
  +
    Use another induction argument to show the sequence $(y_1, y_2, y_3,dots)$ is decreasing.
]

#solution[
  #TODO[skipped]
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

#solution[
  + #TODO[part skipped]
  +
    Let $B_i = NN setdiff {i}$.
    Any finite intersection will still have infinitely many elements, but the entire infinite intersection cannot have any elements.
  +
    Let $x in (union.big_(i=1)^oo A_i)^complement$.
    Then we know that for all $i$, $x != A_i$.
    (Otherwise, we would have that $x in union.big_(i=1)^oo A_i$.)

    Therefore, for all $i$, $x in  A_i^complement$, which lets us conclude that $x in inter.big_(i=1)^oo A_i^complement$.

    For the other direction, we just proceed from each step backwards and see that it works fine.
]

== The Axiom of Completeness

#exercise[1.3.1][
  +
    Write a formal definition in the style of Definition 1.3.2 or the _infimum_ or _greatest lower bound_ of a set.
  +
    Now, state and prove a version of Lemma 1.3.8 for greatest lower bounds.
]

#solution[
  #TODO[skipped]
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

#solution[
  + Let $B = {1}$, hmm...
  +
    This cannot be possible.
    Since there are finite elements, there is necessarily a maximum and minimum, so the set must contain both of them.
  +
    Let $A = {1/n : n in NN}$.
    The supremum is $1$, which is contained.
    The infimum is clearly $0$, which is not contained.
]

#exercise[1.3.3][
  +
    Let $A$ be nonempty and bounded below, and define $B = {b in RR : b "is a lower bound for" A}$. Show that $sup B = inf A$.
  +
    Use (a) to explain why there is no need to assert that greatest lower bounds exist as part of the Axiom of Completeness.
]

#solution[
  +
    First, we know that the supremum of $B$ must exist, since it is bounded above by any element of $A$.

    So let $b' = sup B$, and $a' = inf A$.

    AFSOC that there exists some $a in A$ such that $a < b'$.
    Let $epsilon.alt = b' - a > 0$, and then we know that there must be some $b in B$ such that $b > b' - epsilon.alt = a$, so we have $b > a$.
    This is a contradiction, since we assumed that $b$ is a lower bound for all elements in $A$.

    Therefore, we have shown that $b'$ is a lower bound for $A$, and since it is a supremum of $B$, it must be the greatest such lower bound.
    This is exactly the definition of infimum of $A$.
  +
    For any set bounded from below, we can take the set of all lower bounds, and use part (a) to show that the greatest lower bound is the smallest upper bound of the set of lower bounds.
]

#exercise[1.3.4][
  Let $A_1, A_2, A_3, dots$ be a collection of nonempty sets, each of which is bounded above.
  +
    Find a formula for $sup(A_1 union A_2)$. Extend this to $sup(union.big_(k=1)^n A_k)$.
  +
    Consider $sup(union.big_(k=1)^oo A_k)$. Does the formula in (a) extend to the infinite case?
]

#solution[
  +
    $sup(A_1 union A_2) = max(sup A_1, sup A_2)$.

    Extended to $n in NN$, we have
    $
      sup(union.big_(k=1)^n A_k) = max_(k in [n]) (sup A_k).
    $
  +
    This does not extend to infinite max, since it may be possible for the infinite max to exist. For example, if we have each $A_k$ simply consist of the natural number $k$, then there is no supremum and no max.
]

#exercise[1.3.5][
  As in Example 1.3.7, let $A in RR$ be nonempty and bounded above, and let $c in RR$.
  This time define the set $c A = {c a : a in A}$.
  +
    If $c >= 0$, show that $sup(c A) = c sup A$.
  +
    Postulate a similar type of statement for $sup(c A)$ for the case $c < 0$.
]

#solution[
  #TODO[
    skipped
  ]
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

#solution[
  +
    Let $c in A + B$.
    Then $c = a + b$, with $a in A$, and $b in B$.

    Now, we have that $a <= s$ and $b <= t$, so therefore, $c <= s + t$.
  +
    For all $b in B$, we have that $a + b <= u$.
    Thus, $u - a >= b$, so $u - a$ is an upper bound for $B$.

    Since $t$ is the least upper bound for $B$, we now have that $t <= u - a$.
  +
    Let $u$ be an arbitrary upper bound for $A + B$.
    By (b), we have that for all $a in A$, $t <= u - a$.

    Therefore we also have that $a <= u - t$, showing that $u - t$ is an upper bound on $A$.
    Since $s$ is the least upper bound on $A$, we have $s <= u - t$, and thus have $s + t <= u$.
    This shows that $s + t$ must be the least upper bound and therefore is the supremum of $A + B$.
  +
    Choose arbitrary $epsilon.alt > 0$.
    For $epsilon.alt / 2$, there must exist $a in A$ and $b in B$ such that $a >= s - epsilon.alt / 2$ and $b >= t - epsilon.alt / 2$.

    Therefore, $s + t - epsilon.alt <= a + b$ for some $a + b$ in $A + B$.

    But from part (a), we know that $s + t$ itself is an upper bound of $A + B$.
    Therefore, it must be that $s + t$ is the supremum of $A + B$.
]

#exercise[1.3.7][
  Prove that if $a$ is an upper bound for $A$, and if $a$ is also an element of $A$, then it must be that $a = sup(A)$.
]

#solution[
  #TODO[skipped]
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

#solution[
  + supremum is $1$, infimum is $0$.
  + supremum is $1$, infimum is $-1$.
  + supremum is $1/3$, infimum is $1/4$.
  + supremum is $1$, infimum is $0$.
]

#exercise[1.3.9][
  +
    If $sup A < sup B$, show that there exists an element $b in B$ that is an upper bound for $A$.
  +
    Give an example to show that this is not always the case if we only assume $sup A <= sup B$.
]

#solution[
  #TODO[skipped]
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

#solution[
  +
    $A$ is clearly bounded by above, just pick any element in $B$.

    Using the Axiom of Completeness, there must exist some $c = sup A$.
    By definition, $c >= x$ for all $x in A$.

    By 1.3.3, $c$ is the infimum of $B$, so for all $x in B$, we have that $b >= c$.
  +
    Assume the Cut Property.

    Let $B$ be the set of upper bounds of $E$.
    Now let $A = RR setdiff B$.

    Now note that for any $a in A$ and $b in B$, we have that $a < b$.
    This is because if we assume otherwise, then we see that $a$ is an upper bound for $E$ and should have been an element of $B$ in the first place.

    Now, from the Cut Property, we have that there exists a $c$ such that $a <= c <= b$.

    Now, I show that $c$ is an upper bound for $e$.

    AFSOC that there exists some $e in E$ such that $e > c$.
    Examine $epsilon.alt = e - c > 0$.

    Since $epsilon.alt/2 + c > c$, it must be a member of $B$ and thus be an upper bound for $E$.

    However, we also have that $epsilon.alt / 2 + c < e$, so it cannot be an upper bound for $E$.
    Contradiction!

    Thus, since $c$ is an upper bound and is less than or equal to all upper bounds of $E$, we have that $c$ exists and is the supremum of $E$.
  +
    Let $A$ be ${x in QQ : x^2 <= 2}$, and $B := {x in QQ : x^2 > 2}$.

    They clearly are disjoint sets that form the rationals.

    But we have proven that there cannot be such a $c in QQ$ such that it exists in the middle of these two sets.
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

#solution[
  +
    This is true.
    AFSOC false.
    Then there must exist some $a in A$ such that it is greater than $sup B$ but less than or equal to $sup A$.

    But since $A subset.eq B$, it must be an element of $B$ as well, which leads us to a contradiction since we assumed it would be greater than $sup B$.
  +
    True. #TODO[skipped]
  +
    False. #TODO[skipped]
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

#solution[
  +
    Let $a = m / n$, $b = p / q$.
    Then $m p in ZZ$, and $n q in NN$.

    Therefore $a b = (m p) / (n q) in QQ$.

    $m q in ZZ$, and $n p in ZZ$, so therefore $a + b = (m q + n p) / (n q) in QQ$.
  + #TODO[skipped]
  + #TODO[skipped]
]

#exercise[1.4.2][
  Let $A subset.eq RR$ be nonempty and bounded above, and let $s in RR$ have the property that for all $n in NN$, $s + 1/n$ is an upper bound for $A$ and $s - 1/n$ is not an upper bound for $A$.
  Show $s = sup A$.
]

#solution[
  AFSOC $s > sup A$.
  
  Then there must exist some $n in NN$ such that $1 / n < s - sup A$.

  So then, $s - 1/n > sup A$, which is a contradiction with the condition that $s - 1 / n$ cannot be an upper bound.

  The other direction $s < sup A$ works the same way.

  Therefore it must be that $s = sup A$.
]

#exercise[1.4.3][
  Prove that $inter.big_(n=1)^oo (0, 1 slash n) = emptyset$.
  Notice that this demonstrates that the intervals in the Nested Interval Property must be closed for the conclusion of the theorem to hold.
]

#solution[
  AFSOC there exists some $x in inter.big_(n=1)^oo (0, 1 slash n)$.

  It must be that $x > 0$, and therefore, there exists some $n in NN$ such that $1 / n  < x$.

  However, $x$ would then be excluded from the interval $(0, 1 / n)$, which is a contradiction.
]

#exercise[1.4.4][
  Let $a < b$ be real numbers and consider the set $T = QQ inter [a,b]$.
  Show $sup T = b$.
]

#solution[
  $b$ is clearly an upper bound.

  Let $epsilon.alt > 0$, and also choose $epsilon.alt < b - a$.

  There must exist $r in QQ$ such that $b - epsilon < r < b$.
  Therefore $r in T$, which shows that $sup T = b$.
]

#exercise[1.4.5][
  Using Exercise 1.4.1, supply a proof for Corollary 1.4.4 by considering the real $a - sqrt(2)$ and $b - sqrt(2)$.
]

#solution[
  First, choose a rational $y$ such that $a - sqrt(2) < y < b - sqrt(2)$.
  Next, we see clearly that $y + sqrt(2) in II$.

  Now, we can see that $a < y + sqrt(2) < b$.
]

#exercise[1.4.6][
  Recall that a set $B$ is _dense_ in $RR$ if an element of $B$ can be found between any two real numbers $a < b$.
  Which of the following sets are dense in $RR$?
  Take $p in ZZ$ and $q in NN$ in every case.
  + The set of all rational numbers $p slash q$ with $q <= 10$.
  + The set of all rational numbers $p slash q$ with $q$ a power of $2$.
  + The set of all rational numbers $p slash q$ with $10 abs(p) >= q$.
]

#solution[
  #TODO[skipped]
]

#exercise[1.4.7][
  Finish the proof of Theorem 1.4.5 by showing that the assumption $alpha^2 > 2$ leads to a contradiction of the fact that $alpha = sup T$.
]

#solution[
  *Claim:* If we choose $1/(n_0) < (alpha^2 - 2)/(2 alpha)$, then we can show that $alpha - 1/n_0$ is still an upper bound for $T = {t in RR : t^2 < 2}$.

  #proof[
    Consider the following:
    $
      (alpha - 1/n)^2 &= alpha^2 - (2 alpha) / n + 1 / n^2\
      &> alpha^2 - (2 alpha) / n.
    $
    We want to choose an $n$ such that $alpha^2 - (2 alpha) / n > 2$.
    Note that if we choose $n_0$ as in the claim, we get that the inequality holds.

    Thus, $alpha - 1/n_0$ is actually an upper bound on $T$ that is smaller than $alpha$, contradicting the assumption that $alpha = sup T$.
  ]
]

#exercise[1.4.8][
  Give an example of each or state that the request is impossible.
  When a request is impossible, provide a compelling argument for why this is the case.
  +
    Two sets $A$ and $B$ with $A inter B = emptyset$, $sup A = sup B$, $sup A in.not A$ and $sup B in.not B$.
  +
    A sequence of nested open intervals $J_1 supset.eq J_2 supset.eq J_3 supset.eq dots.c$ with $inter.big_(n=1)^oo J_n$ nonempty but containing only a finite number of elements.
  +
    A sequence of nested unbounded closed intervals $L_1 supset.eq L_2 supset.eq L_3 supset.eq dots.c$ with $inter.big_(n=1)^oo L_n = emptyset$.
    (An unbounded closed interval has the form $[a, oo) = {x in RR : x >= a}$.)
  +
    A sequence of closed bounded (not necessarily nested) intervals $I_1, I_2, I_3, dots$ with the property that $inter.big_(n=1)^N I_n != emptyset$ for all $N in NN$, but $inter.big_(n=1)^oo I_n = emptyset$.
]
#solution[
  +
    Let $A = {q in QQ mid(bar) q < 0}$, and $B = {r in RR setdiff QQ mid(bar) r < 0}$.
  +
    Let $J_n = (-1/n, 1/n)$.
    Then the only element in the intersection can be $0$.
  +
    Let $L_n = [n, oo)$.
    This cannot have any element.
  +
    This is *impossible*, and we can prove it using the nested interval property.

    #proof[
      First, we use the fact that a non-empty intersection of two closed, bounded intervals must itself be a closed bounded interval.

      Now, let
      $
        I'_n = inter.big_(m=1)^(n) I_m
      $
      define a new sequence of closed bounded intervals, which are nested by construction.

      By the assumption that every finite intersection is non-empty, every $I'_n$ must also be a non-empty closed, bounded, interval.

      It is also important to note that the finite and infinite intersection of this sequence is exactly equal to the finite and infinite intersection of the original sequence.

      Now, we can apply the NIP to deduce that the infinite intersection must be non-empty, which disproves the original claim.
    ]
]

== Cardinality

#exercise[1.5.1][
  Finish the following proof for Theorem 1.5.7.
  
  Assume $B$ is a countable set.
  Thus, there exists $f : NN -> B$, which is 1--1 and onto.
  Let $A subset.eq B$ be an infinite subset of $B$.
  We must show that $A$ is countable.

  Let $n_1 = min{n in NN : f(n) in A}$.
  As a start to a definition of $g : NN -> A$, set $g(1) = f(n_1)$.
  Show how to inductively continue this process to produce a 1--1 function $g$ from $NN$ onto $A$.
]

#solution[
  For $i > 1$, let $n_i = min{n in NN mid(:) f(n) in A, n > n_(i-1)}$.
  This must exist since $A$ is an infinite set, thus there cannot be an upper bound on $n$ such that $f(n) in A$.

  Now, just let $g(i) = f(n_i)$.
  This is an injective function, since each $n_i$ is distinct and $f$ is an injective function.
]

#exercise[1.5.2][
  Review the proof of Theorem $1.5.6$, part (ii) showing that $RR$ is uncountable, and then find the flaw in the following erroneous proof that $QQ$ is uncountable:

  Assume, for contradiction, that $QQ$ is countable.
  Thus we can write $QQ = {r_1, r_2, r_3, dots}$ and, as before, construct a nested sequence of closed intervals with $r_n in.not I_n$.
  Our construction implies $inter.big_(n=1)^oo I_n$ while NIP implies $inter.big_(n=1)^oo I_n != emptyset$.
  This contradiction implies $QQ$ must therefore be uncountable.
]

#solution[
  NIP is not true in general over the rationals, since the element could be an irrational.
]

#exercise[1.5.3][
  Use the following outline to supply proofs for the statements in Theorem 1.5.8.
  +
    First, prove statement (i) for two countable sets, $A_1$ and $A_2$.
    Example 1.5.3 (ii) may be a useful reference.
    Some technicalities can be avoided by first replacing $A_2$ with the set $B_2 = A_2 setdiff A_1 = {x in A_2 : x in.not A_1}$.
    The point of this s that the union $A_1 union B_2$ is equal to $A_1 union A_2$ and the sets $A_1$ and $B_2$ are disjoint.
    (What happens if $B_2$ is finite?)

    Now, explain how the more general statement in (i) follows.
  +
    Explain why induction _cannot_ be used to prove part (ii) of Theorem 1.5.8 from part (i).
  +
    Show how arranging $NN$ into the two-dimensional array
    $
      mat(
        delim: #none,
        column-gap: #1em,
        1, 3, 6, 10, 15, dots.c;
        2, 5, 9, 14, dots.c;
        4, 8, 13, dots.c;
        7, 12, dots.c;
        11, dots.c;
        dots.v
      )
    $
    leads to a proof of Theorem 1.5.8 (ii).
]

#solution[
  +
    Select $B_2 = A_2 setdiff A_1$.
    For enumeration purposes, alternate elements from $A_1$ and $B_2$.
    If $B_2$ is finite, after all elements are enumerated, continue enumerating from $A_1$.

    Now, continue this enumeration strategy all the way to $A_m$ by doing this same alternating enumeration strategy for $union.big_(i=1)^n A_i$ and $A_(n+1)$.
  +
    Induction may not work, since induction only makes it hold for finite unions, not infinite unions.
  +
    If we arrange the countable sets in rows, then we can visit by zig-zag pattern.
]

#exercise[1.5.4][
  + Show $(a,b) ~ RR$ for any interval $(a,b)$.
  +
    Show that an unbounded interval like $(a, oo) = {x : x > a}$ has the same cardinality as $RR$ as well.
  +
    Using open intervals makes it more convenient to produce the required 1--1, onto functions, but it is not really necesssary.
    Show that $[0,1) ~ (0,1)$ by exhibiting a 1--1 onto function between the two sets.
]

#solution[
  +
    We can map $(a,b)$ to $(0,1)$.

    Alternatively, for a direct bijection, consider the function
    $
      f(x) = tan(((x-a)/(b-a) - 1/2)pi).
    $
  +
    Choose the function $ln(x-a)$.
  +
    Let $f : [0,1) -> (0,1)$ be defined the following way:
    $
      f(x) = cases(
        1/2 &quad"if" x = 0,
        1/(n+1) &quad"if" x = 1/n "for" n in NN,
        x &quad"else".
      )
    $
]

#exercise[1.5.5][
  + Why is $A ~ A$ for every set $A$?
  +
    Given sets $A$ and $B$, explain why $A ~ B$ is equivalent to asserting $B ~ A$.
  +
    For three sets $A$, $B$, and $C$, show that $A ~ B$ and $B ~ C$ implies $A ~ C$.
    These three properties are what is meant by saying that $~$ is an _equivalence relation_.
]

#solution[
  + Use identity bijection.
  +
    Bijection has bijection inverse.
  +
    Let $f: A -> B$ be a bijection, and $g: B -> C$ be another.
    Then $g compose f$ is also a bijection.

    #proof[
      
      Injective: If $x != y$ for $x, y in A$ then $f(x) != f(y)$.
      Since $g$ is also injective we also have $g(f(x)) != g(f(y))$.

      Surjective: For all $c in C$, there exists $b in B$ such that $g(b) = c$.
      Since $f$ is also surjective, there must exist $a in A$ such that $f(a) = b$.
      Thus, for all $c in C$, there exists $a in A$ such that $g(f(a)) = c$.
    ]
]

#exercise[1.5.6][
  +
    Give an example of a countable collection of disjoint open intervals.
  +
    Give an example of an uncountable collection of disjoint open intervals, or argue that no such collection exists.
]

#solution[
  +
    Let $I_n = (n, n+1)$.
    Clearly disjoint, and open intervals.
  +
    This cannot exist.
    If it did, then consider by density of rational numbers that there would exist a distinct rational in each interval, thus implying there would be uncountable rationals.
]

#exercise[1.5.7][
  Consider the open interval $(0,1)$, and let $S$ be the set of points in the open unit square; that is, $S = {(x,y) : 0 < x, y < 1}$.
  +
    Find a 1--1 function that maps $(0,1)$ into, but not necessarily onto, $S$.
    (This is easy.)
  +
    Use the fact that every real number has a decimal expansion to produce a 1--1 function that maps $S$ into $(0,1)$.
    Discuss whether the formulated function is onto.
    (Keep in mind that any terminating decimal expansion such as $.235$ represents the same real number as $.234999 dots$.)
  The Schröder--Bernstein Theorem discussed in Exercise 1.5.11 can now be applied to conclude that $(0,1) ~ S$.
]

#solution[
  +
    Consider $f(x) = (x/2, x)$.
  +
    For $(x,y) in S$, consider the (potentially countable) decimal expansion of each.
    Let's label the expansion of $x$ as $0.d_1 d_2 d_3 d_4 dots$, and the second as $0.d'_1 d'_2 d'_3 d'_4 dots$.
    We consider the terminating decimal expansion representations, rather than one with inifinite $9$s.

    Now we simply map $(x,y)$ to the following real number:
    $
      f((x,y)) = 0.d_1 d'_1 d_2 d'_2 d_3 d'_3 dots.
    $
    To see that this is injective, note that if two intervals differ from each other, that at least one of the left or right endpoints must differ.
    Since they differ, they must have a different decimal expansion, and thus the resulting real number will also have a different digit and be a different real number.

    This logic only fails if we somehow produce a real number that ends in repeating $9$s, which is impossible since it would imply that both of our original expansions were of that form.

    However, this function is not surjective.

    Consider a real number that, for example, ends in alternating $1$s and $9$s.
    This itself is a unique real number with no other decimal representation, but the only way to construct it would be with a decimal with repeating $9$s.
    This representation is not in our domain, so there is no way to output this real number.
]

#exercise[1.5.8][
  Let $B$ be a set of positive real numbers with the property that adding together any finite subset of elements from $B$ always gives a sum of $2$ or less.
  Show $B$ must be finite or countable.
]

#solution[
  First, note that $B subset.eq (0, 2]$.

  For arbitrary $n in NN$, consider the subset $(1/n, 2] inter B$.
  This can only have finite elements, since otherwise, we could choose $2n$ elements from the subset to sum to greater than $2$.

  Note that this holds true for all $n$.

  Now also note that $B = union.big_(n=1)^oo [(1/n, 2] inter B]$.
  This is a countable union of finite sets, which is countable.
]

#exercise[1.5.9][
  A real number $x in RR$ is called _algebraic_ if there exist integers $a_0, a_1, a_2, dots, a_n in ZZ$, not all zero, such that
  $
    a_n x^n + a_(n-1) x^(n-1) + dots.c + a_1 x + a_0 = 0.
  $
  Said another way, a real number is algebraic if it is the root of a polynomial with integer coefficients.
  Real numbers that are not algebraic are called _transcendental_ numbers. Reread the last paragraph of Section 1.1.
  The final question posed here is closely related to the question of whether or not transcendental numbers exist.
  + Show that $sqrt(2)$, $root(3, 2)$, and $sqrt(3) + sqrt(2)$ are algebraic.
  +
    Fix $n in NN$, and let $A_n$ be the algebraic numbers obtained as roots of polynomials with integer coefficients that have degree $n$.
    Using the fact that every polynomial has a finite number of roots, show that $A_n$ is countable.
  +
    Now, argue that the set of all algebraic numbers is countable.
    What may we conclude about the set of transcendental numbers?
]

#solution[
  +
    Consider the following:
    $
      #box(width: 100%)[
        $x^2 - 2 = 0, quad x^3 - 2 = 0, quad x^4 - 10 x^2 + 1 = 0.$
      ]
    $
  +
    There are a countable number of integer polynomials of degree $n$, since it can be defined uniquely with a finite product of countable sets.

    Since each has finite solutions, the total number of solutions and thus elements of $A_n$ is a countable union of finite sets and is countable.
  +
    We simply take the countable union of all $A_n$ for all $n$.
    
    Again, a countable union of countable sets is countable.

    Since the algebraic numbers are countable, the rest of the reals (transcendental) must be uncountable.
]

#exercise[1.5.10][
  +
    Let $C subset.eq [0,1]$ be uncountable.
    Show that there exists $a in (0,1)$ such that $C inter [a,1]$ is uncountable.
  +
    Now let $A$ be the set of all $a in (0,1)$ such that $C inter [a,1]$ is uncountable, and set $alpha = sup A$.
    Is $C inter [alpha, 1]$ an uncountable set?
  +
    Does the statement in (a) remain true if "uncountable" is replaced by "infinite"?
]

#solution[
  +
    AFSOC that there does not exist such an $a$.

    Then for all $a in (0,1)$, $C inter [a,1]$ is countable.

    Examine the sequence $(a_n)_(n in NN)$ where $a_n = 1/(n+1)$.

    Clearly, we have that $C = (union.big_(n=1)^oo C inter [1/(n+1), 1]) union (C inter {0})$.

    This is simply a countable union of countable sets, which implies that $C$ is countable.
    
    *Contradiction!*

    Therefore there must exist some $a in (0,1)$ such that $C inter [a,1]$ is uncountable.
  +
    Not necessarily.
    Consider if $C = [0,1]$.
    Then any $a in (0,1)$ will produce an uncountable set $[a,1]$.
    The supremum of $A$ is $1$. But $C inter [1,1] = {1}$, which is finite.
  +
    No.
    Let $C = {1/n mid(bar) n in NN}$.
    All choices of $a$ lead to a finite intersection.
]

#exercise[1.5.11 (Schröder--Bernstein Theorem)][
  Assume there exists a 1--1 function $f : X -> Y$ and another 1--1 function $g : Y -> X$.
  Follow the steps to show that there exists a 1--1, onto function $h : X -> Y$ and hence $X ~ Y$.

  The strategy is to partition $X$ and $Y$ into components
  $
    X = A union A' wide "and" wide Y = B union B'
  $
  with $A inter A' = emptyset$ and $B inter B' = emptyset$, in such a way that $f$ maps $A$ onto $B$, and $g$ maps $B'$ onto $A'$.
  +
    Explain how achieving this would lead to a proof that $X ~ Y$.
  +
    Set $A_1 = X setdiff g(Y) = {x in X : x in.not g(Y)}$ (what happens if $A_1 = emptyset$?) and inductively define a sequence of sets by letting $A_(n+1) = g(f(A_n))$.
    Show that ${A_n : n in NN}$ is a pairwise disjoint collection of subsets of $X$, while ${f(A_n) : n in NN}$ is a similar collection in $Y$.
  +
    Let $A = union.big_(n=1)^oo A_n$ and $B = union.big_(n=1)^oo f(A_n)$.
    Show that $f$ maps $A$ onto $B$.
  +
    Let $A' = X setdiff A$ and $B' = Y setdiff B$.
    Show $g$ maps $B'$ onto $A'$.
]

#solution[
  +
    If we restrict the domain of $f$ to $A$, then it is a bijection between $A$ and $B$.

    Similarly, if we restrict $g$ to $B'$, then $g$ is a bijection between $B'$ and $A'$.

    Now, we can just define $h: X -> Y$ the following way:
    $
      h(x) = cases(
        f(x) &quad"if" x in A,
        g^(-1)(x) &quad"else".
      )
    $
    This is clearly a bijection.
  +
    First, if $A_1 = emptyset$, then we are done. This is because $g(Y) = X$, which implies that $g$ is a bijection and we are done.

    Assuming that $A_1$ is non-empty, we can proceed by induction.

    #proof[
      *Base case:* Notice that $f(A_1) subset.eq Y$.
      Thus $g(f(A_1)) subset.eq g(Y)$, so $(X setdiff g(Y)) inter (g(f(A_1))) = emptyset$.

      *Inductive hypothesis:* Assume for some $n$ that $A_1, dots, A_n$ are pairwise disjoint.
      Thus, $f(A_n)$ is also disjoint from all $f(A_1), dots, f(A_(n-1))$, since $f$ is injective.
      By the same logic, $g(f(A_1)), dots, g(f(A_n))$ are all also disjoint.

      Since $g(f(A_(i))) = A_(i+1)$, we have that $A_(n+1)$ is disjoint from all $A_2, dots, A_n$.

      It is also disjoint with $A_1$ by similar logic from the base case.

      Note for completeness, if at any point any $A_i$ is empty, then we can just stop with finite $A_i$ that are all pairwise disjoint.
    ]
    Also note that this implies that all ${f(A_n) mid(:) n in NN}$ are pairwise disjoint since $f$ is injective. 
  +
    If $b in B$, then it must exist in exactly one $f(A_i)$. This means that there must be some $a in A_i$ such that $f(a) = b$, which shows that $f$ is surjective.
  +
    First, let's note that $X setdiff A$ is a subset of $g(Y)$.
    This is because if $a in X setdiff A$, then $a in X setdiff A_1 = X setdiff (X setdiff g(Y)) = g(Y)$.

    So we know there must *exist* some $b in Y$ such that $g(b) = a$.

    We should also argue that this $b$ cannot be in $B$.

    AFSOC that $b in B$. Then $b in f(A_n)$ for some $n$, and thus $g(b) in g(f(A_n)) = A_(n+1)$.
    However, this is clearly disjoint with $X setdiff A$, so it must be the case that $b in.not B ==> b in Y setdiff B$.
]

== Cantor's Theorem

#exercise[1.6.1][
  Show that $(0,1)$ is uncountable if and only if $RR$ is uncountable.
  This shows that Theorem 1.6.1 is equivalent to Theorem 1.5.6.
]

#solution[
  ($=>$) This direction is easy, since if $(0,1)$ is uncountable, then clearly since $(0,1) subset.eq RR$, the real numbers must also be uncountable.

  ($arrow.double.l$) If $(0,1)$ is countable, then $RR$ must be countable, since we can construct $RR$ from $(0,1)$ using a countable union of the integers plus $(0,1)$.
]

#exercise[1.6.2][
  +
    Explain why the real number $x = .b_1 b_2 b_3 b_4 dots$ cannot be $f(1)$.
  +
    Now, explain why $x != f(2)$, and in general why $x != f(n)$ for any $n in NN$.
  +
    Point out the contradiction that arises from these observations and conclude that $(0,1)$ is uncountable.
]

#solution[
  +
    It must differ from $f(1)$ at the first digit by construction.
  +
    It must differ from the $n$th digit of $f(n)$ by construction.
  +
    This shows that there must be a real number that is not in our enumeration.
    But we assumed we could enumerate them.
    This is the contradiction, and thus $(0,1)$ is uncountable.
]

#exercise[1.6.3][
  Supply rebuttals to the following complaints about the proof of Theorem 1.6.1
  +
    Every rational number has a decimal expansion, so we could apply this same argument to show that the set of rational numbers between 0 and 1 is uncountable.
    However, because we know that any subset of $QQ$ must be countable, the proof of Theorem 1.6.1 must be flawed.
  +
    Some numbers have _two_ different decimal representations.
    Specifically, any decimal expansion that terminates can also be written with repeating 9's.
    For instance, $1 slash 2$ can be written as $0.5$ or as $.4999 dots$.
    Doesn't this cause some problems?
]

#solution[
  +
    In general, the number that is produced may not be a rational.
  +
    No, this is fine.
    Let's just only consider non-repeating 9's representation, and note that with our construction, we will never produce a number that runs into this issue.
]

#exercise[1.6.4][
  Let $S$ be the set consisting of all sequences of 0's and 1's.
  Observe that $S$ is not a particular sequence, but rather a large set whose elements are sequences; namely,
  $
    S = {(a_1, a_2, a_3, dots) : a_n = 0 "or" 1}.
  $
  As an example, the sequence $(1,0,1,0,1,0,1,0,dots)$ is an element of $S$, as is the sequence $(1,1,1,1,1,1,dots)$.

  Give a rigorous argument showing that $S$ is uncountable.
]

#solution[
  Cantor's diagonalization argument.

  Produce a new binary sequence that differs from all other sequences at the $n$th element.
]

#exercise[1.6.5][
  +
    Let $A = {a,b,c}$. List the eight elements of $cal(P)(A)$.
    (Do not forget that $emptyset$ is considered to be a subset of every set.)
  +
    If $A$ is finite with $n$ elements, show that $cal(P)(A)$ has $2^n$ elements.
]

#solution[
  + $emptyset, {a}, {a,b}, {c}, {a,b}, {a,c}, {b,c}, {a,b,c}$.
  +
    An element can either be in or out of a subset, which gives us two choices per element.
    Thus there are $2^n$ distinct subsets.
]

#exercise[1.6.6][
  +
    Using the particular set $A = {a,b,c}$, exhibit two different 1--1 mappings from $A$ into $cal(P)(A)$.
  +
    Letting $C = {1,2,3,4}$, produce an example of a 1--1 map $g : C -> cal(P)(C)$.
  +
    Explain why, in parts (a) and (b), it is impossible to construct mappings that are _onto_.
]

#solution[
  +
    One mapping:
    $
      a -> {a}, quad b -> {b}, quad c -> {c}.
    $
    Another mapping:
    $
      a -> {a,b}, quad b -> {b}, quad c -> {c}.
    $
  +
    $
      1 -> {1}, quad 2 -> {2}, quad 3 -> {3}, quad 4 -> {4}.
    $
  +
    There are strictly more elements in the range than the domain.
]

#exercise[1.6.7][
  Return to the particular functions constructed in Exercise 1.6.6 and construct the subset $B$ that results using the preceding rule.
  In each case, note that $B$ is not in the range of the function used.
]

#solution[
  #TODO[skipped]
]

#exercise[1.6.8][
  +
    First, show that the case $a' in B$ leads to a contradiction.
  +
    Now, finish the argument by showing that the case $a' in.not B$ is equally unacceptable.
]

#solution[
  +
    If $a' in B$, then it must be that $a' in.not f(a')$ by definition of $B$.

    However, $f(a') = B$ by assumption, so we have shown that $a' in B$ and $a' in.not B$ which is a contradiction.
  +
    If $a' in.not B$, then it must be that $a' in.not f(a')$.
    This implies that it must be in $B$ which is again a contradiction.
]

#exercise[1.6.9][
  Using the various tools and techniques developed in the last two sections (including the exercises from Section 1.5), give a compelling argument showing that $cal(P)(NN) ~ RR$.
]

#solution[
  First, we construct an injection from $(0,1)$ to the set of infinite binary sequences.
  We do this by considering the decimal expansion.

  Next, we construct an injection from the set of infinite binary sequences to $(0,1)$.

  This is a little trickier, as a direct conversion would result in some numbers that are actually the same real number. (For example, $0.0111dots$ and $0.1$).

  We can first consider all sequences that do not end in repeating $1$'s. This will map into $[0,1)$, which we know has a bijection with $(0,1)$. We can divide the result by $3$ to get an injection into $(0,1/3)$.

  Next, we map the sequences that end in infinite $1$'s to their representative real number, divide by 3, and then add $1/3$ to get an injection into $(1/3, 2/3]$.

  This completes the injection into $(0,1)$, so using Schröder--Bernstein we can conclude that the set of infinite binary sequences has the same cardinality as $(0,1)$, and we can use transitivity of this equivalence relation to deduce that $cal(P)(NN) ~ RR$.
]

#exercise[1.6.10][
  As a final exercise, answer each of the following by establishing a 1--1 correspondence with a set of known cardinality.
  +
    Is the set of all functions from ${0,1}$ to $NN$ countable or uncountable?
  +
    Is the set of all functions from $NN$ to ${0,1}$ countable or uncountable?
  +
    Given a set $B$, a subset $cal(A)$ of $cal(P)(B)$ is called an _antichain_ if no element of $cal(A)$ is a subset of any other element of $cal(A)$.
    Does $cal(P)(NN)$ contain an uncountable antichain?
]

#solution[
  +
    This is countable, since there only needs to be two natural numbers to specify the function fully.
    This essentially reduces to the set with $(n,m) in NN^2$.
  +
    This is uncountable.
    This is equivalent to the set of infinite sequences of $0$'s and $1$'s, which is shown to be uncountable due to a diagonalization argument.
  +
    There exists an uncountable antichain.
    Consider the following bijection between an infinite binary sequence and a subset of the natural numbers:
    $
      f((b_n)) = {n : n = 2i + b_i, i in NN}.
    $
    In plain English, for every distinct pair of adjacent natural numbers, we select only one of them based off of the $i$th value of the binary sequence.
    If a binary sequence is distinct from another binary sequence, then transformed into subset world, each subset will have an element that is not included in the other.
    
    Considering this bijection, this antichain must be uncountable.
]

== Epilogue

No exercises in this section.