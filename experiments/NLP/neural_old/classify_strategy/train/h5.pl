% H5: One throws two dice.  Each dice has 6 sides with 1, 2, 3, 4, 5, and 6 dots respectively.  Find the probability that the sum of the dots is at least 8 ## Solution= 15/36

group(1-4).
size(1-4, 6).

given(exactly(1, 1-4, 2)).
given(exactly(1, 1-4, 1)).
given(exactly(1, 1-4, 6)).
given(exactly(1, 1-4, 4)).
given(exactly(1, 1-4, 5)).
given(exactly(1, 1-4, 3)).

take_wr(1-4, 1-2, 2).


probability(aggcmp(1-2,outcome(0),sum,>=,8)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

