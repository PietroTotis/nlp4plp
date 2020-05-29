% L524:  What is the probability of getting a total of 7 or 11 when a pair of fair six-sided dice, labeled 1, 2, 3, 4, 5 and 6, are tossed? ## Solution= 2/9

group(1-19).
size(1-19, 6).

given(exactly(1, 1-19, 1)).
given(exactly(1, 1-19, 2)).
given(exactly(1, 1-19, 3)).
given(exactly(1, 1-19, 4)).
given(exactly(1, 1-19, 5)).
given(exactly(1, 1-19, 6)).

take_wr(1-19, 1-35, 2).

probability(or(aggcmp(1-35,outcome(0),sum,=:=,7),aggcmp(1-35,outcome(0),sum,=:=,11))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
