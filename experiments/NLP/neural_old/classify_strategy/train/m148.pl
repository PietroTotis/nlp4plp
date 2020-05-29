% M148: If you flip three fair coins, what is the probability that you 'll get all three heads? ## Solution= 1/8

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, head)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-3, 3).


probability(exactly(3, 1-3, head)).

property(outcome(0), [head, v(1-6,0)]).

