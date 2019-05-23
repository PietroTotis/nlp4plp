% M545: You roll two dice numbered 1, 2, 3, 4, 5, 6.  What is the probability that the sum is not 6? ## Solution= 0.861111111111111

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).


probability(aggcmp(1-2,outcome(0),sum,=\=,6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

