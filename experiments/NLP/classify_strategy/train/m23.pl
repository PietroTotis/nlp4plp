% M23: In a group of 20 people there are three brothers.  The group is separated at random into two groups of 10.  What is the probability that the brothers are in the same group? ## Solution= 0.21052632

group(1-3).
size(1-3, 20).

given(exactly(3, 1-3, brother)).

take(1-3, 2-9, 10).

probability(or(exactly(3, 2-9, brother), exactly(0, 2-9, brother))).

property(property, [brother]).

