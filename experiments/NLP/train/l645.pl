% L645:  In the game of craps using two 6-sided dice, labeled 1, 2, 3, 4, 5 and 6, a person wins on the first roll if a 7 or an 11 is rolled.  Find the probability of winning on the first roll. ## Solution= 2/9

group(1-16).
size(1-16, 6).

given(exactly(1, 1-16, 2)).
given(exactly(1, 1-16, 1)).
given(exactly(1, 1-16, 6)).
given(exactly(1, 1-16, 4)).
given(exactly(1, 1-16, 5)).
given(exactly(1, 1-16, 3)).

take_wr(1-16, 1-14, 2).

probability(or(aggcmp(1-14,outcome(0),sum,=:=,7), aggcmp(1-14,outcome(0),sum,=:=,11))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).
