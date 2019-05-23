% L255: We have nine electronic components, of which one is defective.  Five components are taken at random to construct a system in series.  What is the probability that the system does not operate? ## Solution= 5/9

group(1-5).
size(1-5, 9).

given(exactly(1, 1-5, defective)).

take(1-5, 2-2, 5).

probability(exactly(1, 2-2, defective)).

property(property, [defective]).

