% H799: A batch of 25 injection-molded parts contains 5 that have suffered excessive shrinkage.  If three parts are selected at random, and without replacement, what is the probability that the third part selected is one with excessive shrinkage ## Solution= .2

group(1-2).
size(1-2, 25).

given(exactly(5, 1-2, shrinkage)).

take(1-2, 2-3, 3).

probability(nth(3, 2-3, shrinkage)).

property(property, [shrinkage]).

