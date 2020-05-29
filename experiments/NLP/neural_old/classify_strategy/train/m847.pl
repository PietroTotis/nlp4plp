% M847: What is the probability of rolling pair of dice and getting a sum of 3?  Each die has 6 sides, numbered 1, 2, 3, 4, 5 and 6. ## Solution= 1/18

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).

take_wr(1-9, 1-6, 2).


probability(aggcmp(1-6,outcome(0),sum,=:=,3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

