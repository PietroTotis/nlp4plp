% M831: Suppose that a satellite defense system is established in which four satellites acting independently have a 0.9 probability of detecting an incoming ballistic missile.  What is the probability that at least one the four satellites detects an incoming ballistic missile? ## Solution= 0.9999

group(2-11).

given(exactly(rel(0.9,2-11), 2-11, detect)).

take_wr(2-11, 2-12, 4).


probability(atleast(1, 2-12, detect)).

property(outcome(0), [detect]).

