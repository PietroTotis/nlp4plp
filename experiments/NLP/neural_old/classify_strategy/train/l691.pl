% L691: An automobile manufacturer has three factories, A, B, and C.  They produce 50, 30, and 20 percent, respectively, of a specific model of car.  Thirty percent of the cars produced in factory A are white, 40 percent of those produced in factory B are white, and 25 percent produced in factory C are white.  If an automobile produced by the company is selected at random, find the probability that it is white. ## Solution= 0.31666667

group(1-6).
size(1-6, 3).

given(exactly(1, 1-6, c)).
given(exactly(rel(30/100, 1-6, a), 1-6, and(a, white))).
given(exactly(1, 1-6, a)).
given(exactly(rel(25/100, 1-6, c), 1-6, and(c, white))).
given(exactly(1, 1-6, b)).
given(exactly(rel(40/100, 1-6, b), 1-6, and(b, white))).

take(1-6, 4-3, 1).

probability(all(4-3, white)).

property(color, [white]).
property(factory, [a, c, b]).

