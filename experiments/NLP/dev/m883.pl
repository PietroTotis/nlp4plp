% M883: Two fair dice are rolled.  Each die has 6 sides, labeled 1, 2, 3, 4, 5 and 6.  Find the probability that they show a sum of 10. ## Solution= 0.0833333333333333

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-5, 2).


probability(aggcmp(1-5,outcome(0),sum,=:=,10)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

