% H410: A box contains 20 bulbs, 12 are defective.  Four bulbs are selected at random.  What is the probability that at least one of the four selected is defective? ## Solution= 0.985552115583075

group(1-5).
size(1-5, 20).

given(exactly(12, 1-5, defective)).

take(1-5, 2-2, 4).

probability(atleast(1, 2-2, defective)).

property(property, [defective]).

