% L451: A box contains 8 balls: 3 of the balls are blue, 4 are red and 1 is purple.  Dina reaches into the box and, without looking, picks one ball.  Find the probability of picking a red ball. ## Solution= 1/2

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, purple)).
given(exactly(3, 1-2, blue)).
given(exactly(4, 1-2, red)).

take(1-2, 2-13, 1).

probability(all(2-13, red)).

property(property, [purple, blue, red]).

