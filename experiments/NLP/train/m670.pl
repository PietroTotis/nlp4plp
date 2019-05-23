% M670:  A random number generator selects three numbers from 1 through 10: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.  Find the probability that one number is 2, 4, or 6, and the other two numbers are odd. ## Solution= 9/40

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

probability(and(exactly(1, 1-5, or(2, or(4, 6))), exactly(2, 1-5, is_odd))).


property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).
