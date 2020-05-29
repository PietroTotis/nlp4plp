% M569: A bowl contains 28 black, 21 red, 23 blue, and 10 green balls.  A ball is drawn at random.  What is the probability that it is blue? ## Solution= 23/82

group(1-2).

given(exactly(23, 1-2, blue)).
given(exactly(10, 1-2, green)).
given(exactly(28, 1-2, black)).
given(exactly(21, 1-2, red)).

take(1-2, 2-2, 1).

probability(all(2-2, blue)).

property(colour, [blue, black, green, red]).

