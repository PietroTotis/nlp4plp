% M607: Two coins are tossed at the same time.  What is the probability of both coins landing the same way up? ## Solution= 0.5

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, head)).

take_wr(1-2, 1-4, 2).


probability(all_same(1-4,outcome(0))).

property(outcome(0), [head, v(1-2,0)]).

