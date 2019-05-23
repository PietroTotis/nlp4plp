% L801: A 6-sided die, labeled 1, 2, 3, 4, 5 and 6, is rolled twice.  Find the probability of a number greater than 3 on each throw. ## Solution= 1/4

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 2).


probability(aggcmp(1-19,outcome(0),min,>,3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

