% H137: It is found that in manufacturing a certain article, defects of one type occur with probability 0.1 and defects of a second type with probability 0.05.  What is the probability that an article has neither defect? ## Solution= .855

group(1-11).

given(exactly(rel(.1,1-11), 1-11, occur)).
group(1-20).

given(exactly(rel(0.05,1-20), 1-20, occur2)).

take_wr(1-20, 1-6-0, 1).
take_wr(1-11, 1-6-1, 1).
union(1-6, [1-6-0,1-6-1]).


probability(all(1-6, and(not(occur), not(occur2)))).

property(outcome(1), [occur]).
property(outcome(0), [occur2]).

