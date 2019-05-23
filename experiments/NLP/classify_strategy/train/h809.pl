% H809: A steel plate contains 20 bolts.  Assume that 5 bolts are not torqued to the proper limit.  Four bolts are selected at random, without replacement, to be checked for torque.  What is the probability that all four of the selected bolts are torqued to the proper limit? ## Solution= 0.28173375

group(1-6).
size(1-6, 20).

given(exactly(5, 1-6, limit)).

take(1-6, 3-2, 4).

probability(none(3-2, limit)).

property(property, [limit]).

