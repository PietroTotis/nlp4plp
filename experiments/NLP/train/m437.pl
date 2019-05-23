% M437: A bag contains 6 red, 5 blue and 4 yellow marbles.  Two marbles are drawn, but the first marble drawn is not replaced.  What is the probability of finding a red, and then a blue marble? ## Solution= 1/7

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(4, 1-2, yellow)).
given(exactly(6, 1-2, red)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, red), nth(2, 2-2, blue))).

property(colour, [blue, red, yellow]).

