% H908: A box contains 20 parts, of which 5 are defective.  Two parts are drawn at random from the box.  What is the probability that one is good and one is defective? ## Solution= 0.39473684

group(1-2).
size(1-2, 20).

given(exactly(5, 1-2, defective)).

take(1-2, 2-2, 2).

probability(exactly(1, 2-2, defective)).

property(property, [defective]).

