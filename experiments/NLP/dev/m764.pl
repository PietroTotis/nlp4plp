% M764: Two dice with six sides, numbered 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability of getting doubles? ## Solution= 0.166666666666667

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 2).


probability(all_same(1-21,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

