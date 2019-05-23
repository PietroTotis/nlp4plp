% H212: Give the probability of having a sum that is odd when two fair dice, each with 6 sides, showing 1, 2, 3, 4, 5 and 6 dots respectively, are thrown. ## Solution= 1/2

group(1-14).
size(1-14, 6).

given(exactly(1, 1-14, 2)).
given(exactly(1, 1-14, 1)).
given(exactly(1, 1-14, 6)).
given(exactly(1, 1-14, 4)).
given(exactly(1, 1-14, 5)).
given(exactly(1, 1-14, 3)).

take_wr(1-14, 1-37, 2).


probability(aggcmp(1-37,outcome(0),sum,is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

