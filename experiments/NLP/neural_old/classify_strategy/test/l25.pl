% L25: What is the probability of throwing a total score of 6 with two dice?  Each dice has 6 sides numbered 1, 2, 3, 4, 5 and 6. ## Solution= 5/36

group(1-14).
size(1-14, 6).

given(exactly(1, 1-14, 2)).
given(exactly(1, 1-14, 1)).
given(exactly(1, 1-14, 6)).
given(exactly(1, 1-14, 4)).
given(exactly(1, 1-14, 5)).
given(exactly(1, 1-14, 3)).

take_wr(1-14, 1-6, 2).


probability(aggcmp(1-6,outcome(0),sum,=:=,6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

