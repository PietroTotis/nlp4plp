% M907: A box contains 15 red pens and 18 brown pens.  If two pens are picked at random one after the other with replacement, what is the probability that the first pen is red and the second is brown? ## Solution= 0.247933884

group(1-2).

given(exactly(18, 1-2, brown)).
given(exactly(15, 1-2, red)).

take_wr(1-2, 2-3, 2).

probability(and(nth(1, 2-3, red), nth(2, 2-3, brown))).

property(colour, [brown, red]).

