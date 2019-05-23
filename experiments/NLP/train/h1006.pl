% H1006: Out of the 13 lights in the lab, 2 of them are defective.  If only 3 lights are tested, what is the probability that both defective are found? ## Solution= 0.038461538

group(1-5).
size(1-5, 13).

given(exactly(2, 1-5, defective)).

take(1-5, 2-4, 3).

probability(exactly(2, 2-4, defective)).

property(property, [defective]).

