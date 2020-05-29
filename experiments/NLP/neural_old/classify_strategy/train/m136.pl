% M136: If you roll two fair dice with 6 sides, numbered 1, 2, 3, 4, 5, 6, what is the probability that the dice show the same number? ## Solution= 1/6

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-6, 1-3, 2).


probability(all_same(1-3,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

