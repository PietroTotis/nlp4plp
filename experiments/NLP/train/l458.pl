% L458: A box contains 8 balls: 3 of the balls are blue, 4 are red and 1 is purple.  Dina reaches into the box and, without looking, picks a red ball.  She does not put the ball back in the box.  Marvin then reaches into the bag and removes a second ball.  What is the probability that the ball that Marvin picks is blue? ## Solution= 3/7

group(rest(2-14)).

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, purple)).
given(exactly(3, 1-2, blue)).
given(exactly(4, 1-2, red)).

take(1-2, 2-14, 1).
observe(all(2-14, red)).
take(rest(2-14), 4-11, 1).

probability(all(4-11, blue)).

property(property, [blue, purple, red]).

