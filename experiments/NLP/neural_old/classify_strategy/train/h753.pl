% H753: If the probability that a fluorescent light has a useful life of at least 800 hours is 0.9, find the probabilities that among 20 such lights at least 15 will have a useful life of at least 800 hours. ## Solution= 0.98874687

group(1-11).

given(exactly(rel(0.9,1-11), 1-11, useful)).

take_wr(1-11, 1-7, 20).


probability(atleast(15, 1-7, useful)).

property(outcome(0), [useful]).

