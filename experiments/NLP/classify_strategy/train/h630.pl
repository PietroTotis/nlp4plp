% H630: Find the chance of throwing more than 15 in a single throw of three dice, numbered 1, 2, 3, 4, 5 and 6. ## Solution= 5/108

group(1-15).
size(1-15, 6).

given(exactly(1, 1-15, 2)).
given(exactly(1, 1-15, 1)).
given(exactly(1, 1-15, 6)).
given(exactly(1, 1-15, 4)).
given(exactly(1, 1-15, 5)).
given(exactly(1, 1-15, 3)).

take_wr(1-15, 1-12, 3).


probability(aggcmp(1-12,outcome(0),sum,>,15)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

