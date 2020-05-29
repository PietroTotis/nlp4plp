% H952: A manufacturer of calculators buys integrated circuits from suppliers A, B, and C. Fifty percent of the circuits come from A, 30 percent from B, and 20 percent from C.  One percent of the circuits supplied by A have been defective in the past, 3 percent of B 's have been defective, and 4 percent of C 's have been defective.  A circuit is selected at random and found to be defective.  What is the probability it was manufactured by B? ## Solution= 0.409090909090909

group(1-7).

given(exactly(rel(3/100, 1-7, b), 1-7, and(b, defective))).
given(exactly(rel(4/100, 1-7, c), 1-7, and(c, defective))).
given(exactly(rel(50/100, 1-7), 1-7, a)).
given(exactly(rel(30/100, 1-7), 1-7, b)).
given(exactly(rel(20/100, 1-7), 1-7, c)).
given(exactly(rel(1/100, 1-7, a), 1-7, and(a, defective))).

take(1-7, 3-2, 1).
observe(all(3-2, defective)).

probability(all(3-2, b)).

property(supplier, [a, c, b]).
property(property, [defective]).

