% H931: A supplier purchases 10 percent of its parts from factory A, 20 percent of its parts from factory B, and the remainder of its parts from factory C. Out of which, 3 percent of A 's parts are defective ; 2 percent of B 's parts are defective, and 1/2 percent of C 's parts are defective.  What is the probability a randomly selected part is defective? ## Solution= 0.0105

group(1-8).

given(exactly(u, 1-8, c)).
given(exactly(rel(20/100, 1-8), 1-8, b)).
given(exactly(rel(2/100, 1-8, b), 1-8, and(b, defective))).
given(exactly(rel(3/100, 1-8, a), 1-8, and(a, defective))).
given(exactly(rel(10/100, 1-8), 1-8, a)).
given(exactly(rel(1/200, 1-8, c), 1-8, and(c, defective))).

take(1-8, 2-8, 1).

probability(all(2-8, defective)).

property(property, [defective]).
property(factory, [a, c, b]).

