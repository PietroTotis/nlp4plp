% H930: A box of transistors has four good transistors mixed up with two bad transistors.  A production worker, in order to sample the product, chooses two transistors at random, the first chosen transistor not being replaced before the second transistor is chosen.  What is the probability that the second transistor chosen is good? ## Solution= 2/3

group(1-2).

given(exactly(2, 1-2, bad)).
given(exactly(4, 1-2, good)).

take(1-2, 2-14, 2).

probability(nth(2, 2-14, good)).

property(property, [bad, good]).

