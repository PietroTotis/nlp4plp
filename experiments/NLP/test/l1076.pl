% L1076: An urn contains four balls: one red, one green, one yellow, and one white.  Two balls are drawn without replacement from the urn.  What is the probability of getting a red ball and a white ball?  Assume that the balls are equally likely to be drawn. ## Solution= 1/6

group(1-2).
size(1-2, 4).

given(exactly(1, 1-2, white)).
given(exactly(1, 1-2, green)).
given(exactly(1, 1-2, red)).
given(exactly(1, 1-2, yellow)).

take(1-2, 2-2, 2).

probability(and(exactly(1, 2-2, red), exactly(1, 2-2, white))).

property(property, [white, green, yellow, red]).

