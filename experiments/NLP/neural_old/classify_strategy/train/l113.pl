% L113: Two fair dice with six sides, numbered 1, 2, 3, 4, 5 and 6, are thrown.  What is the probability that the two scores do not add to 7? ## Solution= 5/6

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-22, 2).


probability(aggcmp(1-22,outcome(0),sum,=\=,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

