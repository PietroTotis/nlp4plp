% L479: A ball is drawn at random from a box containing 10 red, 30 white, 20 blue and 15 orange balls.  Determine the probability that it is neither red nor blue. ## Solution= 3/5

group(1-9).

given(exactly(10, 1-9, red)).
given(exactly(20, 1-9, blue)).
given(exactly(30, 1-9, white)).
given(exactly(15, 1-9, orange)).

take(1-9, 1-2, 1).

probability(all(1-2, and(not(red), not(blue)))).

property(property, [orange, blue, white, red]).

