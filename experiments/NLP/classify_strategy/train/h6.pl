% H6: A die is thrown 3 times.  A die has 6 sides, labelled with 1, 2, 3, 4, 5, and 6 dots respectively.  Find the probability that the sum of the dots is at least 5. ## Solution= 53/54

group(1-2).
size(1-2, 6).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).

take_wr(1-2, 2-2, 3).


probability(aggcmp(2-2,outcome(0),sum,>=,5)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

