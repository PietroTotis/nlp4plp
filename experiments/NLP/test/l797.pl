% L797: A problem in statistics is given to three students, whose chances of solving it are 1/2, 1/3 and 1/4 respectively.  What is the probability that problem will be solved? ## Solution= 3/4

group(1-17).

given(exactly(rel(1/2,1-17), 1-17, solve)).
group(1-19).

given(exactly(rel(1/3,1-19), 1-19, solve)).
group(1-21).

given(exactly(rel(1/4,1-21), 1-21, solve)).

take_wr(1-21, 2-9-0, 1).
take_wr(1-17, 2-9-1, 1).
take_wr(1-19, 2-9-2, 1).
union(2-9, [2-9-0,2-9-1,2-9-2]).


probability(atleast(1, 2-9, solve)).

property(outcome(0), [solve]).

