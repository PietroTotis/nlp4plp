% L130: Two dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6, are thrown together.  Find the probability that both numbers are less than five. ## Solution= 4/9

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).


probability(aggcmp(1-21,outcome(0),max,<,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

