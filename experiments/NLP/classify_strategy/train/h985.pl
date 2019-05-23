% H985: Find the probability that more than 520 heads occur in 1000 tosses of a fair coin. ## Solution= .0974

group(1-16).
size(1-16, 2).

given(exactly(1, 1-16, v(1-16,0))).
given(exactly(1, 1-16, head)).

take_wr(1-16, 1-12, 1000).


probability(more_than(520, 1-12, head)).

property(outcome(0), [head, v(1-16,0)]).

