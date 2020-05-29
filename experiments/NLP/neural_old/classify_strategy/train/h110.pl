% H110: Four suppliers provide 10 percent, 20 percent, 30 percent and 40 percent of the bolts sold by a hardware shop and the rate of defects in their products are 1 percent, 1.5 percent, 2 percent and 3 percent respectively.  Calculate the probability of a given defective bolt coming from supplier 1. ## Solution= 0.045454545

group(1-17).

given(exactly(rel(2/100, 1-17, 3), 1-17, and(3, defective))).
given(exactly(rel(1/100, 1-17, 1), 1-17, and(1, defective))).
given(exactly(rel(10/100, 1-17), 1-17, 1)).
given(exactly(rel(3/100, 1-17, 4), 1-17, and(4, defective))).
given(exactly(rel(20/100, 1-17), 1-17, 2)).
given(exactly(rel(1.5/100, 1-17, 2), 1-17, and(2, defective))).
given(exactly(rel(30/100, 1-17), 1-17, 3)).
given(exactly(rel(40/100, 1-17), 1-17, 4)).

take(1-17, 2-8, 1).
observe(all(2-8, defective)).

probability(all(2-8, 1)).

property(supplier, [1, 3, 2, 4]).
property(defective, [defective]).

