% L263: A bag contains 3 black, 5 green and 4 yellow marbles.  What is the probability that 2 marbles selected at random will both be black? ## Solution= 1/22

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(3, 1-2, black)).
given(exactly(4, 1-2, yellow)).

take(1-2, 2-7, 2).

probability(all(2-7, black)).

property(property, [green, black, yellow]).

