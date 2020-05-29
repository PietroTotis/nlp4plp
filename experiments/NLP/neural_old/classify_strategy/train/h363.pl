% H363: Two standard dice are rolled.  Each have 1, 2, 3, 4, 5, and 6 on their 6 sides respectively.  What is the probability that the product of the two numbers rolled exceeds 8? ## Solution= 5/9

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-5, 2).


probability(aggcmp(1-5,outcome(0),product,>,8)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

