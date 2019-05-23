% M576: In the United States, 55 percent of children get an allowance and 41 percent of children get an allowance and do household chores.  What is the probability that a child does household chores given that the child gets an allowance? ## Solution= 0.745454545454545

group(1-9).

given(exactly(rel(55/100, 1-9), 1-9, allowance)).
given(exactly(rel(41/100, 1-9), 1-9, and(allowance, chore))).

take(1-9, 2-7, 1).
observe(all(2-7, allowance)).

probability(all(2-7, chore)).

property(chore, [chore]).
property(allowance, [allowance]).

