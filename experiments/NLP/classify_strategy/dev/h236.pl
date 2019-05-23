% H236: Suppose we flip five coins.  Compute the probability that we get 0, 1, or 2 heads. ## Solution= 1/2

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, v(1-5,0))).
given(exactly(1, 1-5, head)).

take_wr(1-5, 1-3, 5).


probability(atmost(2, 1-3, head)).

property(outcome(0), [head, v(1-5,0)]).

