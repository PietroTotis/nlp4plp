% L526: A box contains 500 envelopes of which 75 contain $ 100 in cash, 150 contain $ 25, and 275 contain $ 10.  Find the probability that the first envelope purchased contains less than $ 100. ## Solution= 17/20

group(1-2).
size(1-2, 500).

given(exactly(75, 1-2, 100)).
given(exactly(150, 1-2, 25)).
given(exactly(275, 1-2, 10)).

take(1-2, 2-7, 1).

probability(none(2-7, 100)).

property(property, [10, 100, 25]).

