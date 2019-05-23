% M361: There are four green blocks and four red blocks in a bag.  What is the probability of selecting a red block, keeping it, then selecting another red block? ## Solution= 0.214285714285714

group(1-12).

given(exactly(4, 1-12, green)).
given(exactly(4, 1-12, red)).

take(1-12, 2-9, 2).

probability(all(2-9, red)).

property(colour, [green, red]).

