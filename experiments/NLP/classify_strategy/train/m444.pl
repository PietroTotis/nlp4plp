% M444: If the probability that person A will be alive in 20 years is 0.7 and the probability that person B will be alive in 20 years is 0.5, what is the probability that they will both be alive in 20 years? ## Solution= 0.35

group(1-20).

given(exactly(rel(0.5,1-20), 1-20, alive)).
group(1-6).

given(exactly(rel(0.7,1-6), 1-6, alive)).

take_wr(1-20, 1-33-0, 1).
take_wr(1-6, 1-33-1, 1).
union(1-33, [1-33-0,1-33-1]).


probability(all(1-33, alive)).

property(outcome(0), [alive]).

