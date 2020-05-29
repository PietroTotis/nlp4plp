% H385: On a trick 6-sided die the probability of rolling a 1 or 2 is each 1/4, the probability of rolling a 3 or 4 is each 1/6 and the probability of rolling a 5 or 6 is each 1/12.  The trick die and a standard die, with equal probability for each side 1, 2, 3, 4, 5, and 6, are rolled.  What is the probability of rolling a sum of 7? ## Solution= 1/6

group(1-3).

given(exactly(rel(1/4,1-3), 1-3, 2)).
given(exactly(rel(1/6,1-3), 1-3, 3)).
given(exactly(rel(1/4,1-3), 1-3, 1)).
given(exactly(rel(1/6,1-3), 1-3, 4)).
given(exactly(rel(1/12,1-3), 1-3, 5)).
given(exactly(rel(1/12,1-3), 1-3, 6)).
group(2-6).
size(2-6, 6).

given(exactly(1, 2-6, 2)).
given(exactly(1, 2-6, 1)).
given(exactly(1, 2-6, 6)).
given(exactly(1, 2-6, 4)).
given(exactly(1, 2-6, 5)).
given(exactly(1, 2-6, 3)).

take_wr(1-3, 3-6-0, 1).
take_wr(2-6, 3-6-1, 1).
union(3-6, [3-6-0,3-6-1]).


probability(aggcmp(3-6,outcome(0),sum,=:=,7)).

property(outcome(0), [1, 3, 2, 5, 4, 6]).

