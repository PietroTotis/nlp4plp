% H565: An urn contains 4 blue, 3 green and 2 yellow marbles.  Marbles are drawn out, on at a time, with replacement.  If 6 drawings are made, find the probability of obtaining all green marbles. ## Solution= 1/729

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, green)).
given(exactly(2, 1-2, yellow)).

take_wr(1-2, 3-3, 6).

probability(all(3-3, green)).

property(property, [blue, green, yellow]).

