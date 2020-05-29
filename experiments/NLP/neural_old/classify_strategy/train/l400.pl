% L400: An urn contains 3 red balls, 2 green balls and 1 yellow ball.  Three balls are selected at random and without replacement from the urn.  What is the probability that at least 1 color is not drawn? ## Solution= 7/10

group(1-2).

given(exactly(2, 1-2, green)).
given(exactly(3, 1-2, red)).
given(exactly(1, 1-2, yellow)).

take(1-2, 2-2, 3).

probability(or(or(all(2-2, not(red)), all(2-2, not(green))), all(2-2, not(yellow)))).

property(property, [green, yellow, red]).

