% H308:  What is the probability of getting a sum of 8 or 14 when rolling 3 dice, each labelled with 1, 2, 3, 4, 5, 6, simultaneously? ## Solution= 1/6

group(1-16).
size(1-16, 6).

given(exactly(1, 1-16, 2)).
given(exactly(1, 1-16, 1)).
given(exactly(1, 1-16, 6)).
given(exactly(1, 1-16, 4)).
given(exactly(1, 1-16, 5)).
given(exactly(1, 1-16, 3)).

take_wr(1-16, 1-14, 3).

probability(or(aggcmp(1-14,outcome(0),sum,=:=,8), aggcmp(1-14,outcome(0),sum,=:=,14))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
