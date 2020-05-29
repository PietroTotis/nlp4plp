% L892: An urn contains 5 red, 3 green, and 4 purple marbles.  A marble is randomly chosen from the urn.  The marble is replaced in the urn, and a second marble is chosen.  What is the probability of choosing a red and then a purple marble? ## Solution= 0.1388888889

group(1-2).

given(exactly(4, 1-2, purple)).
given(exactly(3, 1-2, green)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 1).
take(1-2, 3-12, 1).

probability(and(all(2-2, red), all(3-12, purple))).

property(property, [purple, green, red]).

