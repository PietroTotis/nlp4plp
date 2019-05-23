% L808: From a box containing 4 white balls, 3 yellow balls and 1 green ball, two balls are drawn one at a time without replacement.  Find the probability that one white and one yellow ball is drawn. ## Solution= 3/7

group(1-3).

given(exactly(3, 1-3, yellow)).
given(exactly(1, 1-3, green)).
given(exactly(4, 1-3, white)).

take(1-3, 1-18, 2).

probability(and(exactly(1, 1-18, white), exactly(1, 1-18, yellow))).

property(property, [white, green, yellow]).

