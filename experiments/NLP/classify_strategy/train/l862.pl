% L862: A bag contains 6 red, 9 blue and 8 white marbles.  One marble is chosen at random from the bag.  Find the probability it is not red. ## Solution= 0.739130434782609

group(1-2).

given(exactly(9, 1-2, blue)).
given(exactly(8, 1-2, white)).
given(exactly(6, 1-2, red)).

take(1-2, 2-2, 1).

probability(none(2-2, red)).

property(property, [blue, white, red]).

