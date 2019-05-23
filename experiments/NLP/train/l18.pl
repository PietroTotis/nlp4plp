% L18: A fair coin is tossed three times.  Find the probability of at least one toss being tails. ## Solution= 7/8

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, tails)).

take_wr(1-3, 1-5, 3).


probability(atleast(1, 1-5, tails)).

property(outcome(0), [v(1-3,0), tails]).

