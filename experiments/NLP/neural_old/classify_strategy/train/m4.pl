% M4: A ball is drawn at random from a box containing 6 red balls, 4 white balls and 5 blue balls.  What is the probability that it is red? ## Solution= 2/5

group(1-9).

given(exactly(6, 1-9, red)).
given(exactly(5, 1-9, blue)).
given(exactly(4, 1-9, white)).

take(1-9, 1-2, 1).

probability(all(1-2, red)).

property(color, [blue, white, red]).

