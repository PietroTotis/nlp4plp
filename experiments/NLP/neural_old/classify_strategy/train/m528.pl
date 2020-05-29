% M528: Four dice are rolled.  Each die has six sides labeled 1, 2, 3, 4, 5, 6.  What is the probability of rolling a number that is not an even number? ## Solution= 0.5

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-4, 4).


probability(aggcmp(1-4,outcome(0),sum,is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

