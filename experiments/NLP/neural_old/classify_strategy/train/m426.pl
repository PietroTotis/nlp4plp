% M426: Two positive numbers less than 10 are selected at random: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.  What is the probability that the sum of the selected numbers is less than 6? ## Solution= 0.21

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

take_wr(1-3, 2-10, 2).


probability(aggcmp(2-10,outcome(0),sum,<,6)).

property(outcome(0), [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]).

