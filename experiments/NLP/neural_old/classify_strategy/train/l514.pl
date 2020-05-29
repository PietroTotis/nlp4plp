% L514: Rolling a six-sided dice, labeled 1, 2, 3, 4, 5 and 6, three times, evaluate the probability of having at least one 6. ## Solution= 91/216

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-1, 3).


probability(atleast(1, 1-1, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

