% H589: Assuming that the chance of death by accident is 1/300, estimate the probability that out of random selection of 150, there will be at least 1 death by accident. ## Solution= 0.3939757

group(1-8).

given(exactly(rel(1/300,1-8), 1-8, death)).

take_wr(1-8, 1-19, 150).


probability(atleast(1, 1-19, death)).

property(outcome(0), [death]).

