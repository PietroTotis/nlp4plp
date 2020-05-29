% M210: When 4 dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, are rolled simultaneously, what is the probability that the same number appears on all of them? ## Solution= 1/216

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 4).


probability(all_same(1-22,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

