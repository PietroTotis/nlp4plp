% H174: Balls are randomly removed from an urn that initially contains 20 red and 10 blue balls.  What is the probability that all of the red balls are removed before all of the blue ones have been removed? ## Solution= 1/3

group(1-7).

given(exactly(10, 1-7, blue)).
given(exactly(20, 1-7, red)).

take(1-7, 2-10, 1).

probability(all(2-10, blue)).

property(property, [blue, red]).

