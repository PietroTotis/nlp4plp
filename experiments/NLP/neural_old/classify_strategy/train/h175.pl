% H175: Two local factories, A and B, produce radios.  Each radio produced at factory A is defective with probability .05, whereas each one produced at factory B is defective with probability .01.  Suppose you purchase two radios that were produced at the same factory, which is equally likely to have been either factory A or factory B.  If the first radio that you check is defective, what is the conditional probability that the other one is also defective? ## Solution= 13/300

group(1-10).

given(exactly(rel(.01, 1-10, b), 1-10, and(b, defective))).
given(exactly(rel(.05, 1-10, a), 1-10, and(a, defective))).
given(exactly(rel(1/2, 1-10), 1-10, a)).
given(exactly(rel(1/2, 1-10), 1-10, b)).

take(1-10, 3-5, 2).
observe(nth(1, 3-5, defective)).
observe(all_same(3-5,factory)).

probability(nth(2, 3-5, defective)).

property(property, [factory]).
property(factory, [a, b]).
property(defective, [defective]).

