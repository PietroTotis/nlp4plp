% L953: Four light bulbs are selected at random without replacement from 16 bulbs, of which 7 are defective.  Find the probability that none are defective. ## Solution= 0.0692307692307692

group(1-12).
size(1-12, 16).

given(exactly(7, 1-12, defective)).

take(1-12, 1-3, 4).

probability(none(1-3, defective)).

property(property, [defective]).

