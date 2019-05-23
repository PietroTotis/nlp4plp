% L817: Two balls are drawn at random with replacement from a box containing 10 black and 8 red balls.  Find the probability that first ball is black and second is red. ## Solution= 20/81

group(1-11).

given(exactly(10, 1-11, black)).
given(exactly(8, 1-11, red)).

take_wr(1-11, 1-2, 2).

probability(and(nth(1, 1-2, black), nth(2, 1-2, red))).

property(property, [black, red]).

