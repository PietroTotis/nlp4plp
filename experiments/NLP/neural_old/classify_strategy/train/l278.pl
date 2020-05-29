% L278: Find the probability of 2 heads or 3 tails if six coins are tossed. ## Solution= 0.546875

group(1-12).
size(1-12, 2).

given(exactly(1, 1-12, tails)).
given(exactly(1, 1-12, head)).

take_wr(1-12, 1-14, 6).


probability(or(exactly(2, 1-14, head), exactly(3, 1-14, tails))).

property(outcome(0), [head, tails]).

