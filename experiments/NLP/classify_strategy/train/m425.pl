% M425: What is the probability that two numbers selected at random between 1, 2, 3 and 4 have a sum greater than 5? ## Solution= 0.375

group(1-7).
size(1-7, 4).

given(exactly(1, 1-7, 1)).
given(exactly(1, 1-7, 4)).
given(exactly(1, 1-7, 2)).
given(exactly(1, 1-7, 3)).

take_wr(1-7, 1-8, 2).


probability(aggcmp(1-8,outcome(0),sum,>,5)).

property(outcome(0), [1, 3, 2, 4]).

