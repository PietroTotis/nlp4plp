% L169: In lotto, 7 numbers are drawn among 1, 2, ..., 36.  A young hopeful, who wants to travel around the world, chooses 7 numbers on a lotto coupon.  Find the probability that he gets all 7 winning numbers. ## Solution= 1.1979376e-07

group(1-5).
size(1-5, 36).

given(exactly(7, 1-5, win)).

take(1-5, 2-15, 7).

probability(all(2-15, win)).

property(property, [win]).

