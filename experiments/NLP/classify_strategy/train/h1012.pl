% H1012: Each employee has a probability of 0.8 to reach 1000 problems submitted.  If there are 3 employees, what is the probability that all 3 reach 1000 problems? ## Solution= .512

group(1-2).

given(exactly(rel(.8,1-2), 1-2, reach)).

take_wr(1-2, 2-5, 3).


probability(all(2-5, reach)).

property(outcome(0), [reach]).

