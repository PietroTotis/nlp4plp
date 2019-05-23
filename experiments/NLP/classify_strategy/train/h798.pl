% H798: A batch of 25 injection-molded parts contains 5 that have suffered excessive shrinkage.  If two parts are selected at random, and without replacement, what is the probability that the second part selected is one with excessive shrinkage? ## Solution= .2

group(1-2).
size(1-2, 25).

given(exactly(5, 1-2, shrinkage)).

take(1-2, 2-3, 2).

probability(nth(2, 2-3, shrinkage)).

property(property, [shrinkage]).

