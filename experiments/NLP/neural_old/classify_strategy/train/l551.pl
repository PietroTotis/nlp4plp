% L551: In a certain assembly plant, three machines, B1, B2 and B3, make 30 percent, 45 percent and 25 percent, respectively, of the products.  It is known from past, experience that 2 percent, 3 percent and 2 percent of the products made by each machine, respectively, are defective.  Now, suppose that a finished product is randomly selected.  What is the probability that it is defective? ## Solution= 0.0245

group(1-30).

given(exactly(rel(45/100, 1-30), 1-30, b2)).
given(exactly(rel(25/100, 1-30), 1-30, b3)).
given(exactly(rel(30/100, 1-30), 1-30, b1)).
given(exactly(rel(3/100, 1-30, b2), 1-30, and(b2, defective))).
given(exactly(rel(2/100, 1-30, b3), 1-30, and(b3, defective))).
given(exactly(rel(2/100, 1-30, b1), 1-30, and(b1, defective))).

take(1-30, 3-7, 1).

probability(all(3-7, defective)).

property(machine, [b1, b2, b3]).
property(state, [defective]).

