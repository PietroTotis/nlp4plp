% H510: A batch of 1000 containers for frozen orange juice contains 13 that are defective.  Three containers are selected at random, without replacement, from the batch.  What is the probability that all three were defective? ## Solution= (13*12*11)/(1000*999*998)

group(1-2).
size(1-2, 1000).

given(exactly(13, 1-2, defective)).

take(1-2, 2-2, 3).

probability(all(2-2, defective)).

property(property, [defective]).

