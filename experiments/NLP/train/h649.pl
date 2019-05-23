% H649: Six independent space missions to the moon are planned.  The estimated probability of success on each mission is 0.95.  What is the probability that at least 5 of the planned missions will be successful? ## Solution= 0.96722617

group(2-8).

given(exactly(rel(.95,2-8), 2-8, success)).

take_wr(2-8, 1-4, 6).


probability(atleast(5, 1-4, success)).

property(outcome(0), [success]).

