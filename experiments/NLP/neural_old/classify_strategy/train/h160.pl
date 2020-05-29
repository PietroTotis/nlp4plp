% H160: Stores A, B, and C have 50, 75, and 100 employees, respectively, and 50, 60, and 70 percent of them respectively are women.  Resignations are equally likely among all employees, regardless of sex.  One woman employee resigns.  What is the probability that she works in store C? ## Solution= .5

group(1-15).

given(exactly(75, 1-15, b)).
given(exactly(rel(70/100, 1-15, c), 1-15, and(c, woman))).
given(exactly(100, 1-15, c)).
given(exactly(50, 1-15, a)).
given(exactly(rel(60/100, 1-15, b), 1-15, and(b, woman))).
given(exactly(rel(50/100, 1-15, a), 1-15, and(a, woman))).

take(1-15, 3-3, 1).
observe(all(3-3, woman)).

probability(all(3-3, c)).

property(store, [a, c, b]).
property(sex, [woman]).

