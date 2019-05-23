% M454: You roll one 6-sided die, what is the probability of a 3 given you know the number is odd? ## Solution= 1/3

group(1-5).
size(1-5, 6).

given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 3)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 6)).

take_wr(1-5, 1-2, 1).
observe(aggcmp(1-2,outcome(0),sum,is_odd)).

probability(all(1-2, 3)).

property(outcome(0), [1,2,3,4,5,6]).

