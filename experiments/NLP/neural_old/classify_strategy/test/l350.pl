% L350: Throw two fair dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6, one after the other.  What is the probability that the second die is 3, given that the sum of the dice is 6? ## Solution= 1/5

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-1, 2).
observe(aggcmp(1-1,outcome(0),sum,=:=,6)).


probability(nth(2, 1-1, 3)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

