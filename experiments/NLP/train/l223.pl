% L223:  Three integer digits 0, 1, 2, 3, 4, 5, 6, 7, 8 or 9 are chosen at random with repetitions allowed.  What is the probability that exactly one digit will be even? ## Solution= 3/8

group(1-3).
size(1-3, 10).

given(exactly(1, 1-3, 9)).
given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 0)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 7)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).
given(exactly(1, 1-3, 8)).

take_wr(1-3, 1-24, 3).

probability(exactly(1, 1-24, is_even)).

property(outcome(0), [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]).