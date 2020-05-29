% H1003: The food goes bad when the fridge loses electricity and the owner is not home.  There is a 0.01 percent chance of the fridge losing electricity and a 10 percent chance of the owner not being home.  What is the probability that the food goes bad? ## Solution= .00001

group(1-7).

given(exactly(rel(0.01/100,1-7), 1-7, power_out)).
group(1-12).

given(exactly(rel(10/100,1-12), 1-12, not_home)).

take_wr(1-12, 1-2-0, 1).
take_wr(1-7, 1-2-1, 1).
union(1-2, [1-2-0,1-2-1]).


probability(and(some(1-2, power_out), some(1-2, not_home))).

property(outcome(1), [power_out]).
property(outcome(0), [not_home]).

