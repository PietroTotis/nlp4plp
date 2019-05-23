% M492: A die with six sides numbered 1, 2, 3, 4, 5, 6, is rolled twice.  What is the probability that the sum of the faces is greater than 7, given that the first outcome was a 1? ## Solution= 0.0

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-20, 2).
observe(nth(1, 1-20, 1)).


probability(aggcmp(1-20,outcome(0),sum,>,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

