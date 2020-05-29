% M165: You have a 10-sided die, labeled 1, 2, 3, 4, 5, 6, 7, 8, 9, 10.  The die is rolled.  What is the probability that you roll a 4 or an 8? ## Solution= 1/5

group(1-5).
size(1-5, 10).

given(exactly(1, 1-5, 9)).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 7)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 10)).
given(exactly(1, 1-5, 3)).
given(exactly(1, 1-5, 8)).

take_wr(1-5, 2-4, 1).


probability(all(2-4, or(4, 8))).

property(outcome(0), [10, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

