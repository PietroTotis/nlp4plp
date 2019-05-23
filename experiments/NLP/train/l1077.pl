% L1077: An urn contains 3 white balls and 2 red balls.  Two balls are to be drawn one at a time and without replacement.  Find the probability that the two drawn balls are of different colors.  Assume that the balls are equally likely to be drawn. ## Solution= 0.6

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(2, 1-2, red)).

take(1-2, 2-2, 2).

probability(all_diff(2-2,color)).

property(color, [white, red]).

