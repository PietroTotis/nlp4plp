% L2: Two coins are tossed, find the probability that two heads are obtained. ## Solution= 0.25

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).


probability(exactly(2, 1-4, head)).

property(property(0), [head]).
property(outcome(0), [v(1-2,0)]).

