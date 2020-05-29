% M880: A bag contains 6 blue balls, 4 yellow balls, and 2 red balls.  What is the theoretical probability of getting a yellow ball? ## Solution= 1/3

group(1-2).

given(exactly(6, 1-2, blue)).
given(exactly(4, 1-2, yellow)).
given(exactly(2, 1-2, red)).

take(1-2, 2-10, 1).

probability(all(2-10, yellow)).

property(colour, [blue, red, yellow]).

