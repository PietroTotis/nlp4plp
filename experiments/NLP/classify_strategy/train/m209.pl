% M209: When two dice with 6 sides, labeled 1, 2, 3, 4, 5, 6 are thrown simultaneously, what is the probability that the sum of the two numbers that turn up is less than 11? ## Solution= 11/12

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-21, 2).


probability(aggcmp(1-21,outcome(0),sum,<,11)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

