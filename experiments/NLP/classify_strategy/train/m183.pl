% M183: There are 3 defective calculators in a box of 100.  Out of five selected, what is the probability that all 5 are good? ## Solution= 0.85599876314162

group(1-8).
size(1-8, 100).

given(exactly(3, 1-8, defective)).

take(1-8, 2-4, 5).

probability(none(2-4, defective)).

property(property, [defective]).

