% M502: A number from 1 to 8 is chosen at random: 1, 2, 3, 4, 5, 6, 7, 8.  What is the probability that the number chosen is not even? ## Solution= 1/2

group(1-2).
size(1-2, 8).

given(exactly(1, 1-2, 2)).
given(exactly(1, 1-2, 1)).
given(exactly(1, 1-2, 6)).
given(exactly(1, 1-2, 4)).
given(exactly(1, 1-2, 7)).
given(exactly(1, 1-2, 5)).
given(exactly(1, 1-2, 3)).
given(exactly(1, 1-2, 8)).

take_wr(1-2, 1-8, 1).


probability(aggcmp(1-8,outcome(0),sum,is_odd)).

property(outcome(0), [1, 3, 2, 5, 4, 7, 6, 8]).

