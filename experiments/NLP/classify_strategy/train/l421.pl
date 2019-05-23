% L421: A box contains 5 green, 4 yellow and 3 white marbles.  Three marbles are drawn at random.  What is the probability that they are not of the same colour? ## Solution= 41/44

group(1-2).

given(exactly(3, 1-2, white)).
given(exactly(5, 1-2, green)).
given(exactly(4, 1-2, yellow)).

take(1-2, 2-2, 3).

probability(and(and(not(all(2-2, green)), not(all(2-2, yellow))), not(all(2-2, white)))).

property(colour, [white, green, yellow]).

