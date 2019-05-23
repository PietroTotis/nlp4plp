% L1137: A jar contains 6 blue marbles, 12 green marbles and 7 yellow marbles.  Find the probability of randomly drawing a green marble. ## Solution= 0.48

group(1-2).

given(exactly(6, 1-2, blue)).
given(exactly(12, 1-2, green)).
given(exactly(7, 1-2, yellow)).

take(1-2, 2-9, 1).

probability(all(2-9, green)).

property(property, [blue, green, yellow]).

