% M86: Four dice with six sides, numbered 1, 2, 3, 4, 5 and 6 are thrown simultaneously.  What is the probability that all of them show the same face? ## Solution= 1/216

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-20, 4).


probability(all_same(1-20,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

