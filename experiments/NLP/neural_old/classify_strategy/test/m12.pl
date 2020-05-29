% M12: Two dice with 6 sides, numbered 1, 2, 3, 4, 5, 6 are thrown simultaneously.  What is the probability of getting two numbers whose product is even? ## Solution= 0.75

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 1-20, 2).


probability(aggcmp(1-20,outcome(0),product,is_even)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

