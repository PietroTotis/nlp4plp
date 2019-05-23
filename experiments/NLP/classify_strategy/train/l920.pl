% L920: An urn contains 6 red, 5 blue and 2 green marbles.  If 2 marbles are picked at random, what is the probability that both are red? ## Solution= 5/26

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(2, 1-2, green)).
given(exactly(6, 1-2, red)).

take(1-2, 2-3, 2).

probability(all(2-3, red)).

property(property, [blue, green, red]).

