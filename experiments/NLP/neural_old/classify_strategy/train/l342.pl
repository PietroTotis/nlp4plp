% L342: Consider the experiment of throwing 2 fair dice with 6 sides, labeled 1, 2, 3, 4, 5 and 6.  Find the probability that both dice show the same face, using the extra information that the sum of the dice is not greater than 4. ## Solution= 1/3

group(1-8).
size(1-8, 6).

given(exactly(1, 1-8, 2)).
given(exactly(1, 1-8, 1)).
given(exactly(1, 1-8, 6)).
given(exactly(1, 1-8, 4)).
given(exactly(1, 1-8, 5)).
given(exactly(1, 1-8, 3)).

take_wr(1-8, 1-5, 2).
observe(aggcmp(1-5,outcome(0),sum,=<,4)).


probability(all_same(1-5,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

