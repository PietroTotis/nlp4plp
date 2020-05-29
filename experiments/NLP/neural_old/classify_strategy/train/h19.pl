% H19: One controls the quality of A finished product.  The responsible person appears to reject 1 percent of all good products and to approve 5 percent of all bad products.  90 percent of all products are good.  Compute the probability that a random product is good and approved. ## Solution= .891

group(1-8).

given(exactly(rel(10/100, 1-8), 1-8, bad)).
given(exactly(rel(1/100, 1-8, good), 1-8, and(good, reject))).
given(exactly(rel(90/100, 1-8), 1-8, good)).
given(exactly(rel(5/100, 1-8, bad), 1-8, and(approve, bad))).

take(1-8, 4-7, 1).

probability(all(4-7, and(good, approve))).

property(status, [approve, reject]).
property(quality, [bad, good]).

