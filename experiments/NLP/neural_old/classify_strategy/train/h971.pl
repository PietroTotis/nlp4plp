% H971: A fair die numbered 1, 2, 3, 4, 5 and 6, is rolled 240 times.  Find the probability that the number of 2 's or 3 's is between 75 and 83, inclusive. ## Solution= ?

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-18, 240).


probability(and(less_than(83, 1-18, or(2, 3)), more_than(75, 1-18, or(2, 3)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

