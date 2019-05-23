% L923: An urn contains 6 red, 5 blue and 2 green marbles.  If three marbles are picked at random, what is the probability that at least one is blue? ## Solution= 115/143

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(2, 1-2, green)).
given(exactly(6, 1-2, red)).

take(1-2, 2-3, 3).

probability(atleast(1, 2-3, blue)).

property(property, [blue, green, red]).

