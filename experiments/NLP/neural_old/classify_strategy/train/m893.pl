% M893: An urn contains 3 white, 3 black, and 2 red balls.  Find the probability of obtaining in a single random draw a white ball or a red ball. ## Solution= 5/8

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take(1-2, 2-10, 1).

probability(all(2-10, or(white, red))).

property(colour, [white, black, red]).

