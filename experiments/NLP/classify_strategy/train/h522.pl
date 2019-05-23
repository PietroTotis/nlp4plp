% H522: An urn contains 7 red and 4 blue balls.  Two balls are drawn without replacement.  What is the probability that they are the same color? ## Solution= 27/55

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(7, 1-2, red)).

take(1-2, 2-2, 2).

probability(all_same(2-2,color)).

property(color, [blue, red]).

