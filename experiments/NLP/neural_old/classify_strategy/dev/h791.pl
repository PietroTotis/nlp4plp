% H791: A batch of 500 containers for frozen orange juice contains 5 that are defective.  Two are selected, at random, without replacement from the batch.  What is the probability that the second one selected is defective given that the first one was defective? ## Solution= 4/499

group(1-2).
size(1-2, 500).

given(exactly(5, 1-2, defective)).

take(1-2, 2-1, 2).
observe(nth(1, 2-1, defective)).

probability(nth(2, 2-1, defective)).

property(property, [defective]).

