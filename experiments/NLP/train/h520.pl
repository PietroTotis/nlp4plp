% H520: An urn contains 7 red and 4 blue balls.  Two balls are drawn without replacement.  What is the probability that the balls are both red? ## Solution= 21/55

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 2).

probability(all(2-2, red)).

property(property, [blue, red]).

