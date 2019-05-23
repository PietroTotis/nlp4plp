% L219: Three dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, are rolled.  What is the probability that they show different numbers? ## Solution= 5/9

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 3).


probability(all_diff(1-21,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

