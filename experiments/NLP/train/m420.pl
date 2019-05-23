% M420:  Three distinct digits are selected from the digits 2, 3, 4, 5, 6, 7, 8.  What is the probability that the sum of the three digits is a prime number? ## Solution= 0.34285714

group(1-3).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 7)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 8)).

take(1-3, 1-5, 3).
probability(aggcmp(1-5,outcome(0),sum,is_prime)).


property(outcome(0), [3, 2, 5, 4, 7, 6, 8]).
