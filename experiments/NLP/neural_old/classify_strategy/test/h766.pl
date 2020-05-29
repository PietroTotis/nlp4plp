% H766: Find the probability of randomly selecting a red disk in one draw from a container that contains 2 red disks, 4 blue disks, and 3 yellow disks. ## Solution= 2/9

group(1-15).

given(exactly(2, 1-15, red)).
given(exactly(4, 1-15, blue)).
given(exactly(3, 1-15, yellow)).

take(1-15, 1-9, 1).

probability(all(1-9, red)).

property(property, [blue, yellow, red]).

