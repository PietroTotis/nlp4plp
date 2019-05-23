% H537: If the probabilities that three students A, B and C may pass the HSC are 4/7, 3/5, and 2/3, respectively.  What is the probability that all 3 pass? ## Solution= 8/35

group(1-9).

given(exactly(rel(3/5,1-9), 1-9, pass)).
group(1-11).

given(exactly(rel(2/3,1-11), 1-11, pass)).
group(1-7).

given(exactly(rel(4/7,1-7), 1-7, pass)).

take_wr(1-7, 1-6-0, 1).
take_wr(1-9, 1-6-1, 1).
take_wr(1-11, 1-6-2, 1).
union(1-6, [1-6-0,1-6-1,1-6-2]).


probability(all(1-6, pass)).

property(outcome(0), [pass]).

