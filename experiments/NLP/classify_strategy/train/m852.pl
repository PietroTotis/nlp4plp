% M852: There are 6,200 records of rear-end collisions at speeds > 35 K/H involving a certain model of car.  It is found that in rear-end collisions, the fatality rate overall is 11.84 percent.  In seven percent of these rear-end collisions the gas tank ruptures, leading to a fire, and in this sub-group, the fatality rate is 23 percent.  What is the probability of surviving a rear end collision in which a fire developed? ## Solution= 0.77

group(2-7).

given(exactly(rel(23/100, 2-7, fire), 2-7, and(fatal, fire))).
given(exactly(rel(7/100, 2-7), 2-7, fire)).
given(exactly(rel(11.84/100, 2-7), 2-7, fatal)).

take(2-7, 4-10, 1).
observe(all(4-10, fire)).

probability(none(4-10, fatal)).

property(property_1, [fatal]).
property(property_2, [fire]).

