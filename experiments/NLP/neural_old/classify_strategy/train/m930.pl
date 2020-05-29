% M930: You roll a fair six-sided die twice.  What is the probability that the first roll shows a five and the second roll shows a six? ## Solution= 0.027777778

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, v(1-6,1))).
given(exactly(1, 1-6, six)).
given(exactly(1, 1-6, v(1-6,2))).
given(exactly(1, 1-6, five)).
given(exactly(1, 1-6, v(1-6,0))).
given(exactly(1, 1-6, v(1-6,3))).

take_wr(1-6, 1-2, 2).


probability(and(nth(1, 1-2, five), nth(2, 1-2, six))).

property(outcome(0), [v(1-6,2), v(1-6,3), six, v(1-6,0), v(1-6,1), five]).

