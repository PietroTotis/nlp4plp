% H258: A die, with 6 sides, labelled 1, 2, 3, 4, 5, and 6, is rolled 8 times.  What is the probability we will get exactly two 3 's? ## Solution= .26047

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-23, 8).


probability(exactly(2, 1-23, 3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

