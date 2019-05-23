% L958: An oil company is bidding for the rights to drill a well in field A and a well in field B.  The probability it will drill a well in field A is 40 percent.  If it does, the probability the well will be successful is 45 percent.  The probability it will drill a well in field B is 30 percent.  If it does, the probability the well will be successful is 55 percent.  Calculate the probability of a successful well in field A. ## Solution= 0.18

group(wells).

given(exactly(rel(30/100, wells), wells, b)).
given(exactly(rel(45/100, wells, a), wells, and(a, successful))).
given(exactly(rel(40/100, wells), wells, a)).
given(exactly(rel(55/100, wells, b), wells, and(b, successful))).

take(wells, 6-7, 1).

probability(and(all(6-7, successful), all(6-7, a))).

property(field, [a, b]).
property(success, [successful]).

