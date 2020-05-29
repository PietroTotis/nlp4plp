% L885:  A six-sided die, labeled 1, 2, 3, 4, 5 and 6, is rolled.  What is the probability that the number is even or less than 4? ## Solution= 5/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 1).
probability(or(aggcmp(1-19,outcome(0),sum,<,4), all(1-19, is_even))).


property(outcome(0), [1, 3, 2, 5, 4, 6]).
