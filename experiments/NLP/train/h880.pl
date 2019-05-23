% H880: Three missiles are fired at a target and hit it independently, with probabilities 0.7, 0.8, and 0.9, respectively.  What is the probability that the target is hit? ## Solution= .994

group(1-15).

given(exactly(rel(.7,1-15), 1-15, hit)).
group(1-17).

given(exactly(rel(.8,1-17), 1-17, hit)).
group(1-20).

given(exactly(rel(.9,1-20), 1-20, hit)).

take_wr(1-20, 1-2-0, 1).
take_wr(1-15, 1-2-1, 1).
take_wr(1-17, 1-2-2, 1).
union(1-2, [1-2-0,1-2-1,1-2-2]).


probability(atleast(1, 1-2, hit)).

property(outcome(0), [hit]).

