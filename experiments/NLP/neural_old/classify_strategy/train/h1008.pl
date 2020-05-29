% H1008: Computer scientists rely on coffee.  There is a 1 percent chance that on a particular day there is no coffee left in the coffee machines.  With coffee, a scientist has a 99 percent chance of being able to solve a particularly hard problem.  Without coffee, a scientist only has a 50 percent chance of solving it.  What is the probability that the problem can be solved? ## Solution= .9851

group(1-2).

given(exactly(rel(50/100, 1-2, no), 1-2, and(no, solve))).
given(exactly(rel(1/100, 1-2), 1-2, no)).
given(exactly(u, 1-2, coffee)).
given(exactly(rel(99/100, 1-2, coffee), 1-2, and(coffee, solve))).

take(1-2, 5-7, 1).

probability(all(5-7, solve)).

property(coffee, [coffee, no]).
property(problem, [solve]).

