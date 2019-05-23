% H804: Eight cavities in an injection-molding tool produce plastic connectors that fall into a common stream.  A sample is chosen every several minutes.  Assume that the samples are independent.  What is the probability that five successive samples were all produced in the same cavity of the mold? ## Solution= 0.00024414063

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, v(1-2,5))).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,6))).
given(exactly(1, 1-2, cavity)).
given(exactly(1, 1-2, v(1-2,2))).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,4))).
given(exactly(1, 1-2, v(1-2,0))).

take_wr(1-2, 4-8, 5).


probability(all_same(4-8,outcome(0))).

property(outcome(0), [cavity, v(1-2,6), v(1-2,4), v(1-2,5), v(1-2,2), v(1-2,3), v(1-2,0), v(1-2,1)]).

