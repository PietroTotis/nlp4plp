% L706: A box contains 24 transistors, 4 of which are defective.  If 4 are sold at random, find the probability that exactly 2 are defective. ## Solution= 190/1771

group(1-2).
size(1-2, 24).

given(exactly(4, 1-2, defective)).

take(1-2, 2-2, 4).

probability(exactly(2, 2-2, defective)).

property(property, [defective]).

