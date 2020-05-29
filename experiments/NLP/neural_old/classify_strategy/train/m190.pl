% M190: Toss a pair of tetrahedron dice, each numbered 1, 2, 3, 4.  Let X be the sum of the numbers.  What is the probability of getting a sum that is more than 6? ## Solution= 0.1875

group(1-6).
size(1-6, 4).

given(exactly(1, 1-6, 1)).
given(exactly(1, 1-6, 4)).
given(exactly(1, 1-6, 2)).
given(exactly(1, 1-6, 3)).

take_wr(1-6, 1-1, 2).


probability(aggcmp(1-1,outcome(0),sum,>,6)).

property(outcome(0), [1, 3, 2, 4]).

