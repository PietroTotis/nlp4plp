% H312: In New England, 84 percent of the houses have a garage and 65 percent of the houses have a garage and a back yard.  What is the probability that a house has a backyard given that it has a garage? ## Solution= 0.77380952

group(1-3).

given(exactly(rel(65/100, 1-3), 1-3, and(garage, yard))).
given(exactly(rel(84/100, 1-3), 1-3, garage)).

take(1-3, 2-7, 1).
observe(all(2-7, garage)).

probability(all(2-7, yard)).

property(property, [garage]).
property(yard, [yard]).

