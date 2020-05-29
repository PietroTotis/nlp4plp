% L419:  In a simultaneous throw of two six-sided dice, labeled 1, 2, 3, 4, 5 and 6, what is the probability of getting a total of 10 or 11? ## Solution= 5/36

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-4, 2).

probability(or(aggcmp(1-4,outcome(0),sum,=:=,10), aggcmp(1-4,outcome(0),sum,=:=,11))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
