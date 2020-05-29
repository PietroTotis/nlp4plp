% M228: A ball is drawn at random from a box containing 10 red, 30 white, 20 blue and 15 orange balls.  What is the probability that it is not blue? ## Solution= 11/15

group(1-9).

given(exactly(10, 1-9, red)).
given(exactly(20, 1-9, blue)).
given(exactly(30, 1-9, white)).
given(exactly(15, 1-9, orange)).

take(1-9, 1-2, 1).

probability(none(1-2, blue)).

property(colour, [blue, orange, white, red]).

