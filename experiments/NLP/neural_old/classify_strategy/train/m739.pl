% M739: A die is rolled twice.  What is the probability of showing a one on the first roll and an even number on the second roll?  Each die has 6 sides, numbered 1, 2, 3, 4, 5 and 6. ## Solution= 0.0833333333333333

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-4, 2).


probability(and(nth(1, 1-4, 1), nth(2, 1-4, or(or(2, 4), 6)))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

