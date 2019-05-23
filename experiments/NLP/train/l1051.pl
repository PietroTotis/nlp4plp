% L1051: An experiment consists of throwing two 6-sided dice, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that a double is not thrown nor is the score greater than 10? ## Solution= 7/9

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-5, 2).


probability(and(all_diff(1-5,outcome(0)), aggcmp(1-5,outcome(0),sum,=<,10))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

