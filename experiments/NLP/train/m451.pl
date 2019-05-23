% M451: What is the probability that the total of two dice will be greater than 9, given that the first die is a 5?  Each die has 6 sides, labeled 1, 2, 3, 4, 5, 6. ## Solution= 0.33333333

group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-10, 1-4, 2).
observe(nth(1, 1-4, 5)).


probability(aggcmp(1-4,outcome(0),sum,>,9)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

