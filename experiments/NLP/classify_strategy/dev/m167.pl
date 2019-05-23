% M167:  You have a 10-sided die, labeled 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.  The die is rolled.  What is the probability that you roll a 5 or an odd number? ## Solution= 1/2

group(1-5).
size(1-5, 10).

given(exactly(1, 1-5, 9)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 7)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 10)).
given(exactly(1, 1-5, 3)).
given(exactly(1, 1-5, 8)).

take_wr(1-5, 2-4, 1).

probability(or(some(2-4, 5), some(2-4, is_odd))).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).
