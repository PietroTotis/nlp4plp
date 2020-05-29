% L816:  A six-sided die, labeled 1, 2, 3, 4, 5 and 6, is tossed thrice.  Find the probability of getting an odd number at least once. ## Solution= 7/8

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 3).

probability(atleast(1, 1-19, is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
