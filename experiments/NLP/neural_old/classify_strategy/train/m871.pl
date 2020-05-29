% M871: Suppose you flip a fair coin six times.  What is the probability that, in six flips, you get at least one head? ## Solution= 63/64

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, head)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-3, 6).


probability(atleast(1, 1-3, head)).

property(outcome(0), [head, v(1-6,0)]).

