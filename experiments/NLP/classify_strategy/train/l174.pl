% L174: A manufacturer has five seemingly identical computer terminals available for shipping.  Unknown to her, two of the five are defective.  A particular order calls for two of the terminals and is filled by randomly selecting two of the five that are available.  Find the probability that the order is filled with two nondefective terminals. ## Solution= 3/10

group(1-8).
size(1-8, 5).

given(exactly(2, 1-8, defective)).

take(1-8, 3-9, 2).

probability(none(3-9, defective)).

property(property, [defective]).

