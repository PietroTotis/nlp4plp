% H20: Three machines A, B and C produce 50 percent, 30 percent and 20 percent of the total production respectively.  The percentage of defective pieces is 3 percent, 4 percent and 5 percent respectively.  One chooses a piece.  It is defective.  What is the probability that it originates from machine A? ## Solution= 0.40540541

group(1-20).

given(exactly(20, 1-20, c)).
given(exactly(rel(5/100, 1-20, c), 1-20, and(c, defective))).
given(exactly(50, 1-20, a)).
given(exactly(rel(4/100, 1-20, b), 1-20, and(b, defective))).
given(exactly(rel(3/100, 1-20, a), 1-20, and(a, defective))).
given(exactly(30, 1-20, b)).

take(1-20, 3-4, 1).
observe(all(3-4, defective)).

probability(all(3-4, a)).

property(outcome, [defective]).
property(machine_origin, [a, c, b]).

