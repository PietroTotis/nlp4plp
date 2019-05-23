% H631: A hat contains 7 tickets numbered 1, 2, 3, 4, 5, 6 and 7.  Three are chosen at random.  What is the probability that their product be an odd integer? ## Solution= 4/35

group(1-2).
size(1-2, 7).

given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 3)).
given(exactly(1, 1-2, 2)).

take(1-2, 2-1, 3).

probability(aggcmp(2-1,value,product,is_odd)).

property(value, [1, 3, 2, 5, 4, 7, 6]).

