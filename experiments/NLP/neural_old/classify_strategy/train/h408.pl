% H408: in a simultaneous throw of two dice, each with 6 sides labeled 1, 2, 3, 4, 5 and 6 respectively, what is the probability of getting a sum greater than 7? ## Solution= 0.416666666666667

group(1-7).
size(1-7, 6).

given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 6)).
given(exactly(1, 1-7, 4)).
given(exactly(1, 1-7, 5)).
given(exactly(1, 1-7, 3)).

take_wr(1-7, 1-4, 2).


probability(aggcmp(1-4,outcome(0),sum,>,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

