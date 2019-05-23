% L850: A hat contains 3 blue and 5 black tickets.  If one ticket is chosen at random from the hat, what is the probability that it is blue? ## Solution= 0.375

group(1-2).

given(exactly(3, 1-2, blue)).
given(exactly(5, 1-2, black)).

take(1-2, 2-3, 1).

probability(all(2-3, blue)).

property(property, [blue, black]).

