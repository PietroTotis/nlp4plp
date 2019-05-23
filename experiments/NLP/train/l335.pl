% L335: We throw two dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6.  Given that the sum of the eyes is 10, what is the probability that one 6 is cast? ## Solution= 2/3

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).
observe(aggcmp(1-2,outcome(0),sum,=:=,10)).


probability(exactly(1, 1-2, 6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

