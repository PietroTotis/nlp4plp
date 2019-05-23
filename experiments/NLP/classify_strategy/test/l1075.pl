% L1075: An urn contains two black balls and one red ball.  Two balls are drawn with replacement.  What is the probability that both balls are black?  Assume that the balls are equally likely to be drawn. ## Solution= 4/9

group(1-2).

given(exactly(2, 1-2, black)).
given(exactly(1, 1-2, red)).

take_wr(1-2, 2-2, 2).

probability(all(2-2, black)).

property(property, [black, red]).

