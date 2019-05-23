% M483: A sack contains marbles of three different colors: 8 black, 6 white, and 4 red.  Three marbles are selected at random, without replacement.  What is the probability that the selection contains a red marble and two white marbles, in any order? ## Solution= 0.0735294117647059

group(1-2).

given(exactly(6, 1-2, white)).
given(exactly(8, 1-2, black)).
given(exactly(4, 1-2, red)).

take(1-2, 2-2, 3).

probability(and(exactly(1, 2-2, red), exactly(2, 2-2, white))).

property(colour, [white, black, red]).

