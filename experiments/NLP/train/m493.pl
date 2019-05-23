% M493:  A die with six sides, labeled 1, 2, 3, 4, 5, 6, is rolled twice.  What is the probability that the sum of the faces is greater than 7, given that the first outcome was less than 5? ## Solution= 1/4

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).

observe(or(nth(1, 1-21, 1), or(nth(1, 1-21, 2), or(nth(1, 1-21, 3), nth(1, 1-21, 4))))).

probability(aggcmp(1-21,outcome(0),sum,>,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
