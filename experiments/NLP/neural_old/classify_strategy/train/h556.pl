% H556: An urn contains 5 red cubes and 4 white cubes.  Three cubes are drawn in succession without replacement.  What is the probability that the first two cubes are red and the third one white? ## Solution= 10/63

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 3).

probability(and(nth(1, 2-2, red), and(nth(2, 2-2, red), nth(3, 2-2, white)))).

property(property, [white, red]).

