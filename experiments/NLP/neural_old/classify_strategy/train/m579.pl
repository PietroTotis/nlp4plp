% M579: Suppose there are 10 balls in a bucket numbered as follows: 1, 1, 2, 3, 4, 4, 4, 5, 6, and 6.  A single ball is randomly chosen from the bucket.  What is the probability of drawing a ball with a number greater than 4? ## Solution= 3/10

group(2-3).
size(2-3, 10).

given(exactly(1, 2-3, 2)).
given(exactly(2, 2-3, 1)).
given(exactly(2, 2-3, 6)).
given(exactly(3, 2-3, 4)).
given(exactly(1, 2-3, 5)).
given(exactly(1, 2-3, 3)).

take_wr(2-3, 2-6, 1).


probability(aggcmp(2-6,outcome(0),sum,>,4)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

