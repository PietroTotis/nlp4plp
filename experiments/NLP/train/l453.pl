% L453: When rolling a six-sided die, labeled 1, 2, 3, 4, 5 and 6, what is the probability of it not landing on a 2? ## Solution= 5/6

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-2, 1).


probability(all(1-2, not(2))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

