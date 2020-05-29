% L151: An urn contains 1 red ball and 10 blue balls.  Other than their color, the balls are indistinguishable, so if one is to draw a ball from the urn without peeking - all the balls will be equally likely to be selected.  If we draw 5 balls from the urn at once and without peeking, what is the probability that this collection of 5 balls contains the red ball? ## Solution= 5/11

group(1-2).

given(exactly(10, 1-2, blue)).
given(exactly(1, 1-2, red)).

take(1-2, 3-5, 5).

probability(exactly(1, 3-5, red)).

property(property, [blue, red]).

