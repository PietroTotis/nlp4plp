% L800: Probabilities of solving a specific problem independently by Raju and Soma are 1/2 and 1/3 respectively.  If both try to solve the problem independently, find the probability that the problem is solved. ## Solution= 2/3

group(1-9).

given(exactly(rel(1/2,1-9), 1-9, solve)).
group(1-11).

given(exactly(rel(1/3,1-11), 1-11, solve)).

take_wr(1-11, 1-6-0, 1).
take_wr(1-9, 1-6-1, 1).
union(1-6, [1-6-0,1-6-1]).


probability(atleast(1, 1-6, solve)).

property(outcome(0), [solve]).

