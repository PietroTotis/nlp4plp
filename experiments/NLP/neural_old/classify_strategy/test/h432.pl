% H432: We roll two fair 6-sided dice.  With 6 sides numbered 1, 2, 3, 4, 5, and 6 respectively.  Each of the 36 possible outcomes is assumed to be equally likely.  Given that the roll results in a sum of 4 or less, find the conditional probability that doubles are rolled. ## Solution= 1/3

group(1-6).
size(1-6, 6).

given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 6)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 5)).
given(exactly(1, 1-6, 3)).

take_wr(1-6, 1-2, 2).
observe(aggcmp(1-2,outcome(0),sum,=<,4)).


probability(all_same(1-2,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

