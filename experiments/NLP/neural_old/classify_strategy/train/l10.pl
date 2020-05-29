% L10: Two dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6, are rolled, find the probability that the sum is equal to 5. ## Solution= 1/9

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).


probability(aggcmp(1-21,outcome(0),sum,=:=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

