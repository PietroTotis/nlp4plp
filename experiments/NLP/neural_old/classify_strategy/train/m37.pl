% M37: A die with six sides, numbered 1, 2, 3, 4, 5, 6, is rolled thrice.  What is the probability that the sum of the rolls is at least 5? ## Solution= 0.981481481481482

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 3).


probability(aggcmp(1-21,outcome(0),sum,>=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

