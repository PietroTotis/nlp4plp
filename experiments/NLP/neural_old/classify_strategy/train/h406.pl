% H406: A glass jar contains 6 red, 5 green, 8 blue and 3 yellow marbles.  If a single marble is chosen at random from the jar, what is the probability of choosing a red marble? ## Solution= 3/11

group(1-3).

given(exactly(3, 1-3, yellow)).
given(exactly(6, 1-3, red)).
given(exactly(5, 1-3, green)).
given(exactly(8, 1-3, blue)).

take(1-3, 2-4, 1).

probability(all(2-4, red)).

property(property, [blue, green, red, yellow]).

