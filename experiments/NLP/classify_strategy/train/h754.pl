% H754: If the probability that a fluorescent light has a useful life of at least 800 hours is 0.9, find the probabilities that among 20 such lights at least 2 will not have a useful life of at least 800 hours. ## Solution= 0.608253

group(1-11).

given(exactly(rel(.9,1-11), 1-11, useful)).

take_wr(1-11, 1-7, 20).


probability(atleast(2, 1-7, not(useful))).

property(outcome(0), [useful]).

