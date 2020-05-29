% M446: Two balls are drawn successively without replacement from a box which contains 4 white balls and 3 red balls.  What is the probability that the first ball drawn is white and the second is red? ## Solution= 2/7

group(1-10).

given(exactly(3, 1-10, red)).
given(exactly(4, 1-10, white)).

take(1-10, 1-2, 2).

probability(and(nth(1, 1-2, white), nth(2, 1-2, red))).

property(colour, [white, red]).

