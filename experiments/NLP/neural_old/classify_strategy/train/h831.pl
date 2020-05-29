% H831: In flipping a fair coin 23 times, what is the probability of all heads or all tails? ## Solution= 2.3841858e-07

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, tails)).
given(exactly(1, 1-5, head)).

take_wr(1-5, 1-2, 23).


probability(all_same(1-2,outcome(0))).

property(outcome(0), [head, tails]).

