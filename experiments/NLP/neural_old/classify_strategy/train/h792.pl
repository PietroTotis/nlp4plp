% H792: A batch of 500 containers for frozen orange juice contains 5 that are defective.  Two are selected, at random, without replacement from the batch.  What is the probability that both are defective? ## Solution= .00008016

group(1-2).
size(1-2, 500).

given(exactly(5, 1-2, defective)).

take(1-2, 2-1, 2).

probability(all(2-1, defective)).

property(property, [defective]).

