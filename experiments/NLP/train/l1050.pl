% L1050: An experiment consists of throwing two 6-sided dice, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that a double will not be thrown? ## Solution= 5/6

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-5, 2).


probability(all_diff(1-5,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

