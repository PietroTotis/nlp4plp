% H300: Two dice are rolled.  Each with 6 sides, labelled 1, 2, 3, 4, 5, and 6.  What is the probability the sum will be greater than 10? ## Solution= 1/12

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-4, 2).


probability(aggcmp(1-4,outcome(0),sum,>,10)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

