% H254: Assuming all numbers, 0, 1, 2, 3, 4, 5, 6, 7, 8, and 9, are equally likely, what is the probability that all the numbers in a seven-digit phone number are different? ## Solution= .06048

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

take_wr(1-3, 1-41, 7).


probability(all_diff(1-41,outcome(0))).

property(outcome(0), [1, 0, 3, 2, 5, 4, 7, 6, 9, 8]).

