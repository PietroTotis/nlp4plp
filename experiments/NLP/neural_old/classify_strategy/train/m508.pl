% M508: A 6-sided die with six sides, labeled 1, 2, 3, 4, 5, 6, is rolled.  What is the probability of rolling a number that is not an even number? ## Solution= 1/2

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 1).


probability(aggcmp(1-22,outcome(0),sum,is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

