% H582: A Gallup Poll established that 60 percent of people interviewed are in favour of a certain proposal.  What is the probability that if 15 people are selected at random, there will be a majority of them against the proposal? ## Solution= 0.2131031826

group(1-10).

given(exactly(rel(60/100,1-10), 1-10, favour)).

take_wr(1-10, 2-8, 15).


probability(atleast(8, 2-8, not(favour))).

property(outcome(0), [favour]).

