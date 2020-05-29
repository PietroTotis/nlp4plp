% L788: The probabilities that a student will receive an A, B, C or D grade are 0.30, 0.35, 0.20 and 0.15 respectively.  What is the probability that a student will receive at least a B grade? ## Solution= 0.65

group(2-7).

given(exactly(rel(0.2,2-7), 2-7, c)).
given(exactly(rel(0.3,2-7), 2-7, a)).
given(exactly(rel(0.15,2-7), 2-7, d)).
given(exactly(rel(0.35,2-7), 2-7, b)).

take_wr(2-7, 2-9, 1).


probability(all(2-9, or(a, b))).

property(outcome(0), [a, c, b, d]).

