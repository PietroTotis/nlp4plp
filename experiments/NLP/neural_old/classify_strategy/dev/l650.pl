% L650: Roll two dice with 6 sides, numbered 1, 2, 3, 4, 5 and 6, and multiply the numbers together.  What is the probability that the product is less than 10? ## Solution= 17/36

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-1, 2).


probability(aggcmp(1-1,outcome(0),product,<,10)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

