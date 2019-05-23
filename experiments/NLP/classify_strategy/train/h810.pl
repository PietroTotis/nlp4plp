% H810: A steel plate contains 20 bolts.  Assume that 5 bolts are not torqued to the proper limit.  Four bolts are selected at random, without replacement, to be checked for torque.  What is the probability that at least one of the selected bolts is not torqued to the proper limit? ## Solution= 0.71826625

group(1-6).
size(1-6, 20).

given(exactly(5, 1-6, limit)).

take(1-6, 3-2, 4).

probability(atleast(1, 3-2, limit)).

property(property, [limit]).

