% M669:  A random number generator selects three numbers from 1 through 10: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.  Find the probability that 2 numbers are less than 5 and the other is 10. ## Solution= 0.048

group(1-4).
size(1-4, 10).

given(exactly(1, 1-4, 9)).
given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 7)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 10)).
given(exactly(1, 1-4, 3)).
given(exactly(1, 1-4, 8)).

take_wr(1-4, 1-5, 3).

probability(and(exactly(2, 1-5, or(1, or(2, or(3, 4)))), exactly(1, 1-5, 10))).


property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).
