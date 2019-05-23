% H628: An urn has seven red and five green marbles.  Five marbles are drawn out of the urn, without replacement.  What is the probability that the green marbles outnumber the red ones? ## Solution= 41/132

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 5).

probability(atleast(3, 2-2, green)).

property(property, [green, red]).

