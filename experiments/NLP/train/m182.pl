% M182: There are 3 defective calculators in a box of 100.  Out of five selected, what is the probability that there are at most two defective? ## Solution= 0.999938157081014

group(1-8).
size(1-8, 100).

given(exactly(3, 1-8, defective)).

take(1-8, 2-4, 5).

probability(atmost(2, 2-4, defective)).

property(property, [defective]).

