% H456: An urn contains four dice, one red, one green, and two blue.  One is selected and not replaced, and a second die is removed.  What is the chance that it is blue? ## Solution= 1/2

group(1-2).

group(rest(2-1)).

given(exactly(2, 1-2, blue)).
given(exactly(1, 1-2, green)).
given(exactly(1, 1-2, red)).

take(1-2, 2-1, 1).
take(rest(2-1), 2-11, 1).

probability(all(2-11, blue)).

property(property, [blue, green, red]).

