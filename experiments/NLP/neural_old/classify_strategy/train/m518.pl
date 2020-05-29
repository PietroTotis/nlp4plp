% M518: Three 6-sided dice are rolled.  What is the probability of rolling a number that is not an odd number?  Each die has 6 sides, labeled 1, 2, 3, 4, 5 and 6. ## Solution= 0.5

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-5, 3).


probability(aggcmp(1-5,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

