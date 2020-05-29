% H503: A box contains 12 transistors, 3 of which are defective.  If 3 are sold at random, find the probability that none are defective. ## Solution= 21/55

group(1-5).
size(1-5, 12).

given(exactly(3, 1-5, defective)).

take(1-5, 2-2, 3).

probability(none(2-2, defective)).

property(property, [defective]).

