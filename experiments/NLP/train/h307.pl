% H307: What is the probability of getting a sum of 12 when rolling 3 dice, each labelled with 1, 2, 3, 4, 5, 6, simultaneously? ## Solution= 25/216

group(1-14).
size(1-14, 6).

given(exactly(1, 1-14, 2)).
given(exactly(1, 1-14, 1)).
given(exactly(1, 1-14, 6)).
given(exactly(1, 1-14, 4)).
given(exactly(1, 1-14, 5)).
given(exactly(1, 1-14, 3)).

take_wr(1-14, 1-12, 3).


probability(aggcmp(1-12,outcome(0),sum,=:=,12)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

