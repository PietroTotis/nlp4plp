% M32: A single coin is tossed 5 times.  What is the probability of getting at least one head? ## Solution= 31/32

group(1-3).
size(1-3, 2).

given(exactly(1, 1-3, v(1-3,0))).
given(exactly(1, 1-3, head)).

take_wr(1-3, 1-5, 5).


probability(atleast(1, 1-5, head)).

property(outcome(0), [head, v(1-3,0)]).

