% M158: Suppose that Antonia rolls a pair of fair dice with 6 sides numbered 1, 2, 3, 4, 5, 6.  What is the probability that the sum of the two dice is 6? ## Solution= 5/36

group(1-9).
size(1-9, 6).

given(exactly(1, 1-9, 2)).
given(exactly(1, 1-9, 1)).
given(exactly(1, 1-9, 6)).
given(exactly(1, 1-9, 4)).
given(exactly(1, 1-9, 5)).
given(exactly(1, 1-9, 3)).

take_wr(1-9, 1-4, 2).


probability(aggcmp(1-4,outcome(0),sum,=:=,6)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

