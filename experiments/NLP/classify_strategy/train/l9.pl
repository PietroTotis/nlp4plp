% L9: Two coins are tossed, find the probability that one head only is obtained. ## Solution= 1/2

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).


probability(exactly(1, 1-4, head)).

property(outcome(0), [head, v(1-2,0)]).

