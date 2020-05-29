% H557: An urn contains 5 red cubes and 4 white cubes.  Three cubes are drawn in succession without replacement.  What is the probability that any two cubes are red, and one is white? ## Solution= 10/21

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(5, 1-2, red)).

take(1-2, 2-2, 3).

probability(and(exactly(2, 2-2, red), exactly(1, 2-2, white))).

property(property, [white, red]).

