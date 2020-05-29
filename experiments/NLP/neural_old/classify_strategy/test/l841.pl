% L841: In a box containing 100 bulbs, 10 are defective.  What is the probability that out of a sample of 5 bulbs, none is defective? ## Solution= 0.583752366926152

group(1-3).
size(1-3, 100).

given(exactly(10, 1-3, defective)).

take(1-3, 2-9, 5).

probability(none(2-9, defective)).

property(property, [defective]).

