% L803: The probabilities of A, B and C solving a problem are 1/3, 2/7 and 3/8 respectively.  If all the three try to solve the problem simultaneously, find the probability that exactly one of them will solve it. ## Solution= 0.446428571428571

group(1-8).

given(exactly(rel(3/8,1-8), 1-8, solve)).
group(1-4).

given(exactly(rel(1/3,1-4), 1-4, solve)).
group(1-6).

given(exactly(rel(2/7,1-6), 1-6, solve)).

take_wr(1-4, 2-9-0, 1).
take_wr(1-6, 2-9-1, 1).
take_wr(1-8, 2-9-2, 1).
union(2-9, [2-9-0,2-9-1,2-9-2]).


probability(exactly(1, 2-9, solve)).

property(outcome(0), [solve]).

