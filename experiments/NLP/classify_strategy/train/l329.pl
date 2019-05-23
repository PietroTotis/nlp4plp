% L329: Three athletes are participating in the Marathon.  Their chances of finishing under 2 hours are 1/3, 1/5 and 1/2 respectively.  Their times for the duration of the course are independent.  What is the probability that at least one finishes in less than 2 hours? ## Solution= 0.733333333333333

group(2-11).

given(exactly(rel(1/5,2-11), 2-11, finish)).
group(2-13).

given(exactly(rel(1/2,2-13), 2-13, finish)).
group(2-9).

given(exactly(rel(1/3,2-9), 2-9, finish)).

take_wr(2-11, 4-9-0, 1).
take_wr(2-13, 4-9-1, 1).
take_wr(2-9, 4-9-2, 1).
union(4-9, [4-9-0,4-9-1,4-9-2]).


probability(atleast(1, 4-9, finish)).

property(outcome(0), [finish]).

