% L757: There are three times the number of orange fish as blue fish in a tank at the pet store, and there are no other fish.  If Kaya randomly pulls out one fish from the tank, what is the probability that it is orange? ## Solution= 3/4

group(fish).

given(exactly(rel(3/4, fish), fish, orange)).
given(exactly(rel(1/4, fish), fish, blue)).

take(fish, 2-7, 1).

probability(all(2-7, orange)).

property(property, [orange, blue]).

