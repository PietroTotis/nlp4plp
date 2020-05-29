% L1062: An urn contains 4 red balls, 8 yellow balls and 6 green balls.  A ball is selected at random.  What is the probability that the ball chosen is either red or green? ## Solution= 10/18

group(1-2).

given(exactly(6, 1-2, green)).
given(exactly(4, 1-2, red)).
given(exactly(8, 1-2, yellow)).

take(1-2, 2-2, 1).

probability(all(2-2, or(red, green))).

property(property, [green, red, yellow]).

