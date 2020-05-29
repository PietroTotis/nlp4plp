% H521: An urn contains 7 red and 4 blue balls.  Two balls are drawn without replacement.  What is the probability that the balls are a red and a blue? ## Solution= 28/55

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, red), exactly(1, 2-2, blue))).

property(property, [blue, red]).

