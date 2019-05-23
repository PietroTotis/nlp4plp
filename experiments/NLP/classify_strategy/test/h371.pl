% H371: Three standard dice are tossed.  Each have 6 sides with the numbers 1, 2, 3, 4, 5, and 6.  What is the probability that the sum of the three numbers tossed is 17 or greater? ## Solution= 1/54

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-5, 3).


probability(aggcmp(1-5,outcome(0),sum,>=,17)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

