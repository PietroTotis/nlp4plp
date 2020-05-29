% M369:  A standard die with six sides, labeled 1, 2, 3, 4, 5, 6, is thrown three times, each time showing a 6.  What is the probability that the next roll will also be a 6? ## Solution= 1/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 1).


probability(all(1-22, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
