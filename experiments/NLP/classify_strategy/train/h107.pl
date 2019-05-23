% H107: An automobile manufacturer produces 37 percent of its cars at plant A, 20 percent of its cars at plant B and the rest at plant C.  At plant A, 5 percent of the cars manufactured have defective emission control devices.  At plant B the rate is 3 percent and at plant C the rate is 4 percent.  A single car made by this manufacturer is selected at random.  What is the probability that the car has a defective emission control device given that it was manufactured at plant B? ## Solution= .03

group(1-3).
size(1-3, 100).

given(exactly(rel(3/100, 1-3, b), 1-3, and(b, defective))).
given(exactly(rel(4/100, 1-3, c), 1-3, and(c, defective))).
given(exactly(rel(5/100, 1-3, a), 1-3, and(a, defective))).
given(exactly(37, 1-3, a)).
given(exactly(20, 1-3, b)).
given(exactly(rel(43/100, 1-3), 1-3, c)).

take(1-3, 4-3, 1).
observe(all(4-3, b)).

probability(all(4-3, defective)).

property(plant, [a, c, b]).
property(defective, [defective]).

