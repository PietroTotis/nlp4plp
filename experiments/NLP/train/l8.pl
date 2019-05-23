% L8: A die with 6 sides, numbered 1, 2, 3, 4, 5 and 6, is rolled, find the probability that the number obtained is greater than 4. ## Solution= 1/3

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-21, 1).


probability(aggcmp(1-21,outcome(0),sum,>,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

