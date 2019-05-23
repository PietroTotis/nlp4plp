% L830: A manufacturer has three machine operators A, B and C.  The first operator A produces 1 percent defective items, where as the other two operators B and C produce 5 percent and 7 percent defective items respectively.  A is on the job for 50 percent of the time, B is on the job for 30 percent of the time and C is on the job for 20 percent of the time.  A defective item is produced, what is the probability that it was produced by A? ## Solution= 5/34

group(1-6).
size(1-6, 3).

given(exactly(rel(5/100, 1-6, b), 1-6, and(b, defective))).
given(exactly(rel(1/100, 1-6, a), 1-6, and(a, defective))).
given(exactly(rel(20/100, 1-6), 1-6, c)).
given(exactly(rel(30/100, 1-6), 1-6, b)).
given(exactly(rel(50/100, 1-6), 1-6, a)).
given(exactly(rel(7/100, 1-6, c), 1-6, and(c, defective))).

take(1-6, 4-3, 1).
observe(all(4-3, defective)).

probability(all(4-3, a)).

property(operator, [a, c, b]).
property(item, [defective]).

