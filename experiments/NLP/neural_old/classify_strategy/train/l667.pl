% L667: Three 6-sided dice, labeled 1, 2, 3, 4, 5 and 6, are rolled.  Find the probability of getting a sum of 5. ## Solution= 1/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 3).


probability(aggcmp(1-19,outcome(0),sum,=:=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

