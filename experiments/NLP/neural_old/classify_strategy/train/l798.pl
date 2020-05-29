% L798: Two balls are drawn at random with replacement from a box containing 15 red and 10 white balls.  Calculate the probability that the first ball is red and the second is white. ## Solution= 6/25

group(1-11).

given(exactly(10, 1-11, white)).
given(exactly(15, 1-11, red)).

take_wr(1-11, 1-2, 2).

probability(and(nth(1, 1-2, red), nth(2, 1-2, white))).

property(property, [white, red]).

