% L713: A package contains 12 resistors, 3 of which are defective.  If 4 are selected, find the probability of getting no defective resistors. ## Solution= 14/55

group(1-2).
size(1-2, 12).

given(exactly(3, 1-2, defective)).

take(1-2, 2-2, 4).

probability(none(2-2, defective)).

property(property, [defective]).

