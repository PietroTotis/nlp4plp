% M548: What is the probability of rolling a pair of dice and obtaining a total score of 7?  The dice have 6 sides, numbered 1, 2, 3, 4, 5, 6. ## Solution= 0.166666666666667

group(1-10).
size(1-10, 6).

given(exactly(1, 1-10, 2)).
given(exactly(1, 1-10, 1)).
given(exactly(1, 1-10, 6)).
given(exactly(1, 1-10, 4)).
given(exactly(1, 1-10, 5)).
given(exactly(1, 1-10, 3)).

take_wr(1-10, 1-6, 2).


probability(aggcmp(1-6,outcome(0),sum,=:=,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

