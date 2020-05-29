% M531: A jar contains 40 pins, in which 13 are gray pins, 17 are red, and 10 are blue.  A pin is chosen at random from the jar, what is the probability that it is not blue? ## Solution= 3/4

group(1-2).
size(1-2, 40).

given(exactly(10, 1-2, blue)).
given(exactly(13, 1-2, gray)).
given(exactly(17, 1-2, red)).

take(1-2, 2-2, 1).

probability(none(2-2, blue)).

property(colour, [blue, gray, red]).

