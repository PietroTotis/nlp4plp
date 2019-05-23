% L204: An urn contains 10 white, 5 yellow and 10 black balls.  We pick a random ball.  What is the probability that the ball is yellow, given that it is not black? ## Solution= 1/3

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(10, 1-2, black)).
given(exactly(5, 1-2, yellow)).

take(1-2, 2-5, 1).
observe(none(2-5, black)).

probability(all(2-5, yellow)).

property(property, [white, black, yellow]).

