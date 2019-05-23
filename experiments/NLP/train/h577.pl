% H577: A manufacturer of metal pistons finds that on the average 12 percent of his pistons are rejected because they are either oversized or undersized, What is the probability that a batch of 10 pistons will contain no more than 2 rejects? ## Solution= 0.891318206278025

group(1-17).

given(exactly(rel(12/100,1-17), 1-17, reject)).

take_wr(1-17, 1-35, 10).


probability(atmost(2, 1-35, reject)).

property(outcome(0), [reject]).

