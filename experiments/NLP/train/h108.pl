% H108: In a factory there are 100 units of a certain product, 55 of which are defective.  We pick three units from the 100 units at random.  What is the probability that exactly one of them is defective? ## Solution= 0.336734693877551

group(1-7).
size(1-7, 100).

given(exactly(55, 1-7, defective)).

take(1-7, 2-4, 3).

probability(exactly(1, 2-4, defective)).

property(property, [defective]).

