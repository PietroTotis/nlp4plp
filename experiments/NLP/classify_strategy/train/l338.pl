% L338: Toss two dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6.  What is the probability that the maximum is at least 3? ## Solution= 8/9

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-1, 2).


probability(aggcmp(1-1,outcome(0),max,>=,3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

