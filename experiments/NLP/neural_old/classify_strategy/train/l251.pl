% L251: A lot contains 10 items, of which one is defective.  The items are examined one by one, without replacement, until the defective item has been found.  What is the probability that this defective item will be the second item examined? ## Solution= 1/10

group(1-5).
size(1-5, 10).

given(exactly(1, 1-5, defective)).

take(1-5, 3-13, 2).

probability(nth(2, 3-13, defective)).

property(property, [defective]).

