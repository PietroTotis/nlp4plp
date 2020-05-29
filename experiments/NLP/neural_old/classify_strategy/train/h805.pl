% H805: Eight cavities in an injection-molding tool produce plastic connectors that fall into a common stream.  A sample is chosen every several minutes.  Assume that the samples are independent.  What is the probability that four out of five successive samples were produced in cavity one of the mold? ## Solution= .00107

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, v(1-2,5))).
given(exactly(1, 1-2, one)).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,6))).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,0))).

take_wr(1-2, 3-4, 5).


probability(exactly(4, 3-4, one)).

property(outcome(0), [one, v(1-2,6), v(1-2,4), v(1-2,5), v(1-2,2), v(1-2,3), v(1-2,0), v(1-2,1)]).

