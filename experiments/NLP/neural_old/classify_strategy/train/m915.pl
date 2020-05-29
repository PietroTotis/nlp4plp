% M915: A bucket contains 21 pink covers and 16 purple covers.  If two covers are picked at random one after the other with replacement, what is the probability that the first cover is pink and the second one is purple? ## Solution= 0.245434623

group(1-2).

given(exactly(16, 1-2, purple)).
given(exactly(21, 1-2, pink)).

take_wr(1-2, 2-3, 2).

probability(and(nth(1, 2-3, pink), nth(2, 2-3, purple))).

property(colour, [purple, pink]).

