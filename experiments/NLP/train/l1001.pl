% L1001: A toy factory produces its toys with three machines A, B and C. From the total production, 50 percent are produced by machine A, 30 percent by machine B and 20 percent by machine C. Past statistics show that 4 percent of the toys produced by machine A are defective, 2 percent produced by machine B are defective, and 4 percent of the toys produced by machine C are defective.  What is the probability that a randomly selected toy is defective? ## Solution= 0.034

group(1-6).

given(exactly(rel(2/100, 1-6, b), 1-6, and(b, defective))).
given(exactly(rel(4/100, 1-6, a), 1-6, and(a, defective))).
given(exactly(rel(20/100, 1-6), 1-6, c)).
given(exactly(rel(30/100, 1-6), 1-6, b)).
given(exactly(rel(50/100, 1-6), 1-6, a)).
given(exactly(rel(4/100, 1-6, c), 1-6, and(c, defective))).

take(1-6, 2-9, 1).

probability(all(2-9, defective)).

property(machine, [a, c, b]).
property(state, [defective]).

