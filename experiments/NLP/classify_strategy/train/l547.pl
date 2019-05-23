% L547: A town has 2 fire engines operating independently.  The probability that a specific engine is available when needed is 0.96.  What is the probability that neither is available when needed? ## Solution= 0.0016

group(1-6).

given(exactly(rel(0.96,1-6), 1-6, available)).

take_wr(1-6, 1-7, 2).


probability(all(1-7, not(available))).

property(outcome(0), [available]).

