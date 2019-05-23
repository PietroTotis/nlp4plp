% H332: Three light bulbs are chosen at random from 12 bulbs of which 2 are defective.  Find the probability that none are defective. ## Solution= 6/11

group(1-10).
size(1-10, 12).

given(exactly(2, 1-10, defective)).

take(1-10, 1-3, 3).

probability(none(1-3, defective)).

property(property, [defective]).

