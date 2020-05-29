% M453: What is the probability of rolling a die and its value is 1 knowing that the value is an odd number?  The die has six sides, labeled 1, 2, 3, 4, 5, 6. ## Solution= 1/3

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


probability(all(1-6, 1)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

