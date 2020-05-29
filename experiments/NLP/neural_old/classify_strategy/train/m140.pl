% M140: If you flip three fair coins, what is the probability that you 'll get at least two tails? ## Solution= 1/2

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, tails)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-3, 3).


probability(atleast(2, 1-3, tails)).

property(outcome(0), [tails, v(1-6,0)]).

