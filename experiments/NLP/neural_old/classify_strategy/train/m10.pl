% M10: What is the probability of getting a sum 9 from two throws of a dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6? ## Solution= 1/9

group(1-15).
size(1-15, 6).

given(exactly(1, 1-15, 2)).
given(exactly(1, 1-15, 1)).
given(exactly(1, 1-15, 6)).
given(exactly(1, 1-15, 4)).
given(exactly(1, 1-15, 5)).
given(exactly(1, 1-15, 3)).

take_wr(1-15, 1-12, 2).


probability(aggcmp(1-12,outcome(0),sum,=:=,9)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

