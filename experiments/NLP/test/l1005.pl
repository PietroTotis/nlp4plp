% L1005: A small manufacturing company uses two machines A and B to make shirts.  Observation shows that machine A produces 10 percent of the total production of shirts while machine B produces 90 percent of the total production of shirts.  Assuming that 1 percent of all the shirts produced by A are defective while 5 percent of all the shirts produced by B are defective, what is the probability that a shirt taken at random from a day 's production was made by machine A, given that it is defective. ## Solution= 1/46

group(1-13).

given(exactly(rel(90/100, 1-13), 1-13, b)).
given(exactly(rel(5/100, 1-13, b), 1-13, and(b, defective))).
given(exactly(rel(1/100, 1-13, a), 1-13, and(a, defective))).
given(exactly(rel(10/100, 1-13), 1-13, a)).

take(1-13, 3-33, 1).
observe(all(3-33, defective)).

probability(all(3-33, a)).

property(machine, [a, b]).
property(state, [defective]).

