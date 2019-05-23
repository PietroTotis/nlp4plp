% L297: A ball is drawn at random from a box containing 6 red balls, 4 white balls and 5 blue balls.  What is the probability that the ball is not red? ## Solution= 3/5

group(1-9).

given(exactly(6, 1-9, red)).
given(exactly(5, 1-9, blue)).
given(exactly(4, 1-9, white)).

take(1-9, 1-2, 1).

probability(none(1-2, red)).

property(property, [blue, white, red]).

