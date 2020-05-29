% M900: A bottle contains 20 blue bags and 15 red bags.  If two bags are picked at random one after the other with replacement, what is the probability that the first bag is blue and then the second one is red? ## Solution= 0.244897959

group(1-2).

given(exactly(20, 1-2, blue)).
given(exactly(15, 1-2, red)).

take_wr(1-2, 2-3, 2).

probability(and(nth(1, 2-3, blue), nth(2, 2-3, red))).

property(colour, [blue, red]).

