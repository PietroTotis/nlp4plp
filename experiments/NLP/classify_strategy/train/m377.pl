% M377: A coin is flipped 7 times.  What is the probability that exactly three of the flips are tails? ## Solution= 0.2734375

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tails)).

take_wr(1-2, 1-4, 7).


probability(exactly(3, 1-4, tails)).

property(outcome(0), [v(1-2,0), tails]).

