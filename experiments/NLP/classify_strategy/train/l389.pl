% L389: Let an experiment be to choose the last digit of a randomly chosen phone number in a phone book.  The possible digits are 0, 1, 2, 3, 4, 5, 6, 7, 8 and 9.  What is the probability that, in 5 trials, each of the numbers 0 through 4 occurs exactly once? ## Solution= 0.0012

group(1-9).
size(1-9, 10).

given(exactly(1, 1-9, 9)).
given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 0)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 7)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).
given(exactly(1, 1-9, 8)).

take_wr(1-9, 1-6, 5).


probability(and(and(exactly(1, 1-6, 0), exactly(1, 1-6, 1)), and(exactly(1, 1-6, 2), and(exactly(1, 1-6, 3), exactly(1, 1-6, 4))))).

property(outcome(0), [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]).

