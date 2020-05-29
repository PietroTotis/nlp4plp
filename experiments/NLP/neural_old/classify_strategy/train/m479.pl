% M479: A sack contains marbles of three different colors: 8 black, 6 white, and 4 red.  Three marbles are selected at random, without replacement.  What is the probability that the selection contains three black marbles? ## Solution= 0.0686274509803921

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(8, 1-2, black)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(exactly(3, 2-2, black)).

property(colour, [white, black, red]).

