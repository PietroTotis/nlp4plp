% M656:  Twelve-sided dice can be constructed such that each of the numbers 1, 2, 3, 4, 5 and 6 appears twice on each die.  What is the probability that the total of the two dice is less than 5? ## Solution= 0.16666666666666666

group(1-2).
size(1-2, 12).

given(exactly(2, 1-2, 2)).
given(exactly(2, 1-2, 1)).
given(exactly(2, 1-2, 6)).
given(exactly(2, 1-2, 4)).
given(exactly(2, 1-2, 5)).
given(exactly(2, 1-2, 3)).

take_wr(1-2, 2-7, 2).

probability(aggcmp(2-7,outcome(0),sum,<,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
