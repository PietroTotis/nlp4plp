% M848: Assume the following: 1 in every 150 children are allergic to peanuts, and 1 in every 250 children are allergic to milk.  These allergies are completely independent.  What is the probability of selecting one child, at random, who is allergic to BOTH milk and peanuts? ## Solution= 0.00002667

group(children).

given(exactly(rel(1/150, children), children, peanuts)).
given(exactly(rel(1/250, children), children, milk)).

take(children, 3-8, 1).

probability(all(3-8, and(peanuts, milk))).

property(allergy_1, [peanuts]).
property(allergy_2, [milk]).

