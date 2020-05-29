% H643: An urn contains 30 white and 15 black balls.  If 10 balls are drawn with replacement, find the probability that the first two balls will be white, given that the sample contains exactly 6 white balls. ## Solution= 1/3

group(1-2).

given(exactly(30, 1-2, white)).
given(exactly(15, 1-2, black)).

take(1-2, 2-3, 10).
observe(exactly(6, 2-3, white)).

probability(and(nth(1, 2-3, white), nth(2, 2-3, white))).

property(color, [white, black]).

