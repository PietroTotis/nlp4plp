% L818: Probability of solving specific problem independently by A and B are 1/2 and 1/3.  If both try to solve the problem independently, find the probability that the problem is solved. ## Solution= 2/3

group(1-8).

given(exactly(rel(1/2,1-8), 1-8, solve)).
group(1-10).

given(exactly(rel(1/3,1-10), 1-10, solve)).

take_wr(1-10, 1-5-0, 1).
take_wr(1-8, 1-5-1, 1).
union(1-5, [1-5-0,1-5-1]).


probability(atleast(1, 1-5, solve)).

property(outcome(0), [solve]).

