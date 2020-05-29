% H524: Committees of 3 are picked from 5 persons A, B, C, D, and E.  What is the probability that A is not on the committee? ## Solution= 2/5

group(1-8).
size(1-8, 5).

given(exactly(1, 1-8, c)).
given(exactly(1, 1-8, d)).
given(exactly(1, 1-8, a)).
given(exactly(1, 1-8, b)).
given(exactly(1, 1-8, e)).

take(1-8, 1-1, 3).

probability(none(1-1, a)).

property(property, [a, c, b, e, d]).

