% L273: Two number cubes, labeled 1, 2, 3, 4, 5, and 6, are tossed.  Find the probability that the numbers showing on the cubes match, given that their sum is greater than 7. ## Solution= 0.2

group(1-3).
size(1-3, 6).

given(exactly(1, 1-3, 2)).
given(exactly(1, 1-3, 1)).
given(exactly(1, 1-3, 6)).
given(exactly(1, 1-3, 4)).
given(exactly(1, 1-3, 5)).
given(exactly(1, 1-3, 3)).

take_wr(1-3, 1-20, 2).
observe(aggcmp(1-20,outcome(0),sum,>,7)).


probability(all_same(1-20,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

