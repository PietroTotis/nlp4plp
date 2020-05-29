% L44: Suppose you roll two dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6, and the sum is more than 8.  What is the probability that exactly one 6 is showing? ## Solution= 3/5

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).

take_wr(1-5, 1-3, 2).
observe(aggcmp(1-3,outcome(0),sum,>,8)).


probability(exactly(1, 1-3, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

