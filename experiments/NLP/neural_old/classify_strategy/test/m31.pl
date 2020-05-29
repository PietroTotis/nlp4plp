% M31: A coin is tossed twice.  What is the probability of getting two consecutive tails? ## Solution= 1/4

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tails)).

take_wr(1-2, 1-4, 2).


probability(exactly(2, 1-4, tails)).

property(outcome(0), [v(1-2,0), tails]).

