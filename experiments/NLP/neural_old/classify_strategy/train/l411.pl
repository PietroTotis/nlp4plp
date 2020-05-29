% L411: A 6-sided die, labeled 1, 2, 3, 4, 5 and 6, is rolled, find the probability that an even number is obtained. ## Solution= 1/2

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-19, 1).


probability(aggcmp(1-19,outcome(0),sum,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

