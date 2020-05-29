% L853: A hat contains 3 red, 4 blue and 5 green tickets.  If one ticket is chosen at random, what is the probability that it is a red? ## Solution= 0.25

group(1-2).

given(exactly(4, 1-2, blue)).
given(exactly(5, 1-2, green)).
given(exactly(3, 1-2, red)).

take(1-2, 2-3, 1).

probability(all(2-3, red)).

property(property, [blue, green, red]).

