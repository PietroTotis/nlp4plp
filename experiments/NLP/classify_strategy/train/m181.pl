% M181: There are 3 defective calculators in a box of 100.  Out of five selected, what is the probability that four are good and one is defective? ## Solution= 0.138064316635745

group(1-8).
size(1-8, 100).

given(exactly(3, 1-8, defective)).

take(1-8, 2-4, 5).

probability(and(exactly(4, 2-4, not(defective)), exactly(1, 2-4, defective))).

property(property, [defective]).

