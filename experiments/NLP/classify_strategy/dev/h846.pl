% H846: There are 12 nuts and 12 bolts in a box.  If the contents of the box are divided between two handymen, what is the probability that each handyman will get six nuts and six bolts? ## Solution= 0.31572735

group(1-10).

given(exactly(12, 1-10, nut)).
given(exactly(12, 1-10, bolt)).

take(1-10, 2-8, 12).

probability(and(exactly(6, 2-8, nut), exactly(6, 2-8, bolt))).

property(property, [nut, bolt]).

