% H265: If on an average one ship in every ten is wrecked, find the probability that out of 5 ships expected to arrive, 4 at least will arrive safely. ## Solution= 0.91854

group(1-6).

given(exactly(rel(1/10,1-6), 1-6, wreck)).

take_wr(1-6, 1-23, 5).


probability(atleast(4, 1-23, not(wreck))).

property(outcome(0), [wreck]).

