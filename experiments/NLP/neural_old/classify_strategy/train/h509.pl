% H509: A batch of 1000 containers for frozen orange juice contains 13 that are defective.  Three containers are selected at random, without replacement, from the batch.  What is the probability that the third one selected is defective given that the first and the second one selected were defective? ## Solution= 11/998

group(1-2).
size(1-2, 1000).

group(rest(3-16)).

given(exactly(13, 1-2, defective)).

take(1-2, 3-16, 2).
observe(all(3-16, defective)).
take(rest(3-16), 3-8, 1).

probability(all(3-8, defective)).

property(property, [defective]).

