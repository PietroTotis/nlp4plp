% M452: What is the probability of rolling a die and its value is less than 4 knowing that the value is an odd number?  The die has six sides, labeled 1, 2, 3, 4, 5, 6. ## Solution= 2/3

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-6, 1).
observe(aggcmp(1-6,outcome(0),sum,is_odd)).


probability(aggcmp(1-6,outcome(0),sum,<,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

