% L793: A box contains 12 light bulbs of which 5 are defective.  All the bulbs look alike and have equal probability of being chosen.  Three bulbs are picked up at random.  What is the probability that at least 2 are defective? ## Solution= 4/11

group(1-2).
size(1-2, 12).

given(exactly(5, 1-2, defective)).

take(1-2, 3-2, 3).

probability(atleast(2, 3-2, defective)).

property(property, [defective]).

