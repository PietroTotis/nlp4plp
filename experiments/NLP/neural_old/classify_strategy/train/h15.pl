% H15: A box contains 5 marbles of glass, of which 2 are red and 3 are black, and 20 marbles of stone, of which 8 are red and 12 are black.  One randomly selects a marble.  Find the probability that it is of glass or red or both. ## Solution= 13/25

group(1-2).

given(exactly(5, 1-2, glass)).
given(exactly(2, 1-2, and(glass, red))).
given(exactly(12, 1-2, and(black, stone))).
given(exactly(3, 1-2, and(black, glass))).
given(exactly(8, 1-2, and(red, stone))).
given(exactly(20, 1-2, stone)).

take(1-2, 2-5, 1).

probability(all(2-5, or(glass, red))).

property(color, [black, red]).
property(material, [glass, stone]).

