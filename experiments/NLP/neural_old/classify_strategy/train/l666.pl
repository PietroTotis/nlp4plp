% L666: An urn contains 6 red balls, 2 green balls, 1 blue ball, and 1 white ball.  If a ball is drawn, find the probability of getting a red or a white ball. ## Solution= 7/10

group(1-2).

given(exactly(1, 1-2, blue)).
given(exactly(1, 1-2, white)).
given(exactly(2, 1-2, green)).
given(exactly(6, 1-2, red)).

take(1-2, 2-3, 1).

probability(all(2-3, or(red, white))).

property(property, [blue, white, green, red]).

