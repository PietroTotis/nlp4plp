% M259: There are seven tiles, numbered 1, 1, 2, 2, 2, 3, 3.  Jim takes at random a tile.  He does not replace the tile.  Jim then takes at random a second tile.  What is the probability that both the tiles Jim takes have the number 1 on them? ## Solution= 0.0476190476190476

group(1-4).
size(1-4, 7).

given(exactly(2, 1-4, 3)).
given(exactly(2, 1-4, 1)).
given(exactly(3, 1-4, 2)).

take(1-4, 2-6, 2).

probability(all(2-6, 1)).

property(number, [1, 3, 2]).

