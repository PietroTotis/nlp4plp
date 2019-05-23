% H284: Three identical dice, each with 6 sides labelled 1, 2, 3, 4, 5, and 6, are rolled.  What is the probability that the same number will appear on each of them? ## Solution= 1/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-24, 3).


probability(all_same(1-24,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

