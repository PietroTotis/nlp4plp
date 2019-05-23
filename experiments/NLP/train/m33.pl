% M33: What is the probability of the occurrence of a number that is odd or less than 5 when a fair die with 6 sides, numbered 1, 2, 3, 4, 5, 6, is rolled? ## Solution= 5/6

group(1-21).
size(1-21, 6).

given(exactly(1, 1-21, 2)).
given(exactly(1, 1-21, 1)).
given(exactly(1, 1-21, 6)).
given(exactly(1, 1-21, 4)).
given(exactly(1, 1-21, 5)).
given(exactly(1, 1-21, 3)).

take_wr(1-21, 1-40, 1).


probability(or(aggcmp(1-40,outcome(0),sum,<,5), aggcmp(1-40,outcome(0),sum,is_odd))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

