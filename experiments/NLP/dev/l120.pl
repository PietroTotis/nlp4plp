% L120: Two fair dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6, are thrown.  What is the probability that the score on the first die is 6 or the score on the second die is 5? ## Solution= 11/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 2).


probability(or(nth(1, 1-22, 6), nth(2, 1-22, 5))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

