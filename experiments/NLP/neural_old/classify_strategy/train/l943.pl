% L943: Of 20 light bulbs, 3 are defective.  Five bulbs are chosen at random.  What is the probability that at least one is defective? ## Solution= 0.600877192982456

group(1-4).
size(1-4, 20).

given(exactly(3, 1-4, defective)).

take(1-4, 2-2, 5).

probability(atleast(1, 2-2, defective)).

property(property, [defective]).

