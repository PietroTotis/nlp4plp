% L274: Three coins are tossed.  Find the probability that exactly two coins show tails, given that the third coin show tails. ## Solution= 1/2

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, tails)).

take_wr(1-2, 1-4, 3).
observe(nth(3, 1-4, tails)).


probability(exactly(2, 1-4, tails)).

property(outcome(0), [v(1-2,0), tails]).

