% M362: There are four green blocks and four red blocks in a bag.  What is the probability of selecting a green block, replacing it, then selecting a red block? ## Solution= 0.25

group(1-12).

given(exactly(4, 1-12, green)).
given(exactly(4, 1-12, red)).

take(1-12, 2-9, 1).
take(1-12, 2-18, 1).

probability(and(all(2-9, green), all(2-18, red))).

property(colour, [green, red]).

