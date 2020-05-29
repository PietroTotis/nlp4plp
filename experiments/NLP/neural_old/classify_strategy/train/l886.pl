% L886: You roll two 6-sided dice, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that the sum of the two dice is 10? ## Solution= 0.0833333333333333

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-2, 2).


probability(aggcmp(1-2,outcome(0),sum,=:=,10)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

