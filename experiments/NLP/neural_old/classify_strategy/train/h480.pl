% H480: An urn contains 3 red, 5 blue and 7 green balls.  A set of 3 of the balls is randomly selected.  What is the probability that all 3 have different colors? ## Solution= 0.23076923

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(7, 1-2, green)).
given(exactly(3, 1-2, red)).

take(1-2, 2-4, 3).

probability(all_diff(2-4,colors)).

property(colors, [blue, green, red]).

