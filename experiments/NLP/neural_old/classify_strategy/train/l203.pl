% L203: Suppose that 20 rabbits live in a certain region.  We catch 5 of them, mark these, and let them go again.  After a while we catch 4 rabbits.  Compute the probability that exactly 2 of these 4 are marked. ## Solution= 0.216718

group(1-4).
size(1-4, 20).

given(exactly(5, 1-4, mark)).

take(1-4, 3-7, 4).

probability(exactly(2, 3-7, mark)).

property(property, [mark]).

