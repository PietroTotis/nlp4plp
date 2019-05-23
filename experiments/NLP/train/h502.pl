% H502: A town has 2 fire engines operating independently.  The probability that a specific fire engine is available when needed is 0.92.  What is the probability that both are available when needed? ## Solution= .8464

group(1-6).

given(exactly(rel(.92,1-6), 1-6, available)).

take_wr(1-6, 1-2, 2).


probability(all(1-2, available)).

property(outcome(0), [available]).

