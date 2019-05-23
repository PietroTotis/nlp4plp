% H339: Two people fire at a target at the same time.  The probability that the first person hits the target is 1/4, while the second person hits the target is 1/5.  Find the probability that the target is hit. ## Solution= 2/5

group(2-16).

given(exactly(rel(1/5,2-16), 2-16, hit)).
group(2-6).

given(exactly(rel(1/4,2-6), 2-6, hit)).

take_wr(2-6, 1-3-0, 1).
take_wr(2-16, 1-3-1, 1).
union(1-3, [1-3-0,1-3-1]).


probability(some(1-3, hit)).

property(outcome(0), [hit]).

