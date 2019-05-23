% L629: Roll a single 6-sided die, labeled 1, 2, 3, 4, 5 and 6, 10 times.  Compute the probability that you get at least one 6 and at least one 5. ## Solution= 0.694330364136141

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-1, 10).


probability(and(atleast(1, 1-1, 6), atleast(1, 1-1, 5))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

