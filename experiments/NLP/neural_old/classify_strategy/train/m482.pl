% M482: A sack contains marbles of three different colors: 8 black, 6 white, and 4 red.  Three marbles are selected at random, without replacement.  What is the probability that the selection contains a red, a black and a white marble, in that order? ## Solution= 0.03921568627

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(8, 1-2, black)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(and(nth(1, 2-2, red), and(nth(2, 2-2, black), nth(3, 2-2, white)))).

property(colour, [white, black, red]).

