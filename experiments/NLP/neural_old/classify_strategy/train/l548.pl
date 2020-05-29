% L548: The probability that Tom will be alive in 20 years is 0.7, and the probability that Nancy will be alive in 20 years is 0.9.  If we assume independence for both, what is the probability that neither will be alive in 20 years? ## Solution= 0.03

group(1-4).

given(exactly(rel(0.7,1-4), 1-4, alive)).
group(1-18).

given(exactly(rel(0.9,1-18), 1-18, alive)).

take_wr(1-4, 2-15-0, 1).
take_wr(1-18, 2-15-1, 1).
union(2-15, [2-15-0,2-15-1]).


probability(all(2-15, not(alive))).

property(outcome(0), [alive]).

