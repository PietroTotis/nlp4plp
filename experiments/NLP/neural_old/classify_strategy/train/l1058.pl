% L1058: An airport security has two checkpoints.  Let A be the event that the first checkpoint is busy, and let B be the event the second checkpoint is busy.  Assume that the probability of A is 0.2 and the probability of B is 0.3.  Find the probability that neither of the two checkpoints is busy. ## Solution= 0.56

group(2-8).

given(exactly(rel(0.2,2-8), 2-8, busy)).
group(2-20).

given(exactly(rel(0.3,2-20), 2-20, busy)).

take_wr(2-20, 4-9-0, 1).
take_wr(2-8, 4-9-1, 1).
union(4-9, [4-9-0,4-9-1]).


probability(all(4-9, not(busy))).

property(outcome(0), [busy]).

