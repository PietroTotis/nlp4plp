% L743: Two standard 6-sided dice, labeled 1, 2, 3, 4, 5 an 6, are tossed.  What is the probability that the sum of the two dice is less than 13? ## Solution= 1

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-20, 2).


probability(aggcmp(1-20,outcome(0),sum,<,13)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

