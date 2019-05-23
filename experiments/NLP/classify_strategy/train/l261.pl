% L261: A bag contains 3 black, 5 green and 4 yellow marbles.  What is the probability that a marble selected at random will be green? ## Solution= 5/12

group(1-2).

given(exactly(5, 1-2, green)).
given(exactly(3, 1-2, black)).
given(exactly(4, 1-2, yellow)).

take(1-2, 2-7, 1).

probability(all(2-7, green)).

property(property, [black, green, yellow]).

