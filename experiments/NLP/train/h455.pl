% H455: An urn contains four dice, one red, one green, and two blue.  One is selected at random ; what is the probability that it is blue? ## Solution= 1/2

group(1-2).
size(1-2, 4).

given(exactly(2, 1-2, blue)).
given(exactly(1, 1-2, green)).
given(exactly(1, 1-2, red)).

take(1-2, 2-1, 1).

probability(all(2-1, blue)).

property(property, [blue, green, red]).

