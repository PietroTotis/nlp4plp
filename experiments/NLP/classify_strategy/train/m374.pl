% M374:  What is the probability of rolling each of the numbers 1, 2, 3, 4, 5, 6 in any order with six rolls of a standard die? ## Solution= ?

group(1-31).
size(1-31, 6).

given(exactly(1, 1-31, 2)).
given(exactly(1, 1-31, 1)).
given(exactly(1, 1-31, 6)).
given(exactly(1, 1-31, 4)).
given(exactly(1, 1-31, 5)).
given(exactly(1, 1-31, 3)).

take_wr(1-31, 1-6, 6).

probability(and(exactly(1, 1-6, 1), and(exactly(1, 1-6, 2), and(exactly(1, 1-6, 3), and(exactly(1, 1-6, 4), and(exactly(1, 1-6, 5), exactly(1, 1-6, 6))))))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
