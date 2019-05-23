% H912: An experiment is repeated 5 times.  Assuming that the probability of an experiment being successful is 0.75 and assuming independence of experimental outcomes: What is the probability that all five experiments will be successful? ## Solution= 0.23730469

group(2-9).

given(exactly(rel(.75,2-9), 2-9, successful)).

take_wr(2-9, 1-2, 5).


probability(all(1-2, successful)).

property(outcome(0), [successful]).

