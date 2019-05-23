% M851: Assume the following: 1 in every 150 children are allergic to peanuts, and 1 in every 250 children are allergic to milk.  These allergies are completely independent.  What is the probability that a class of 47 children will contain a child who is allergic to AT LEAST ONE of the two foods? ## Solution= 0.39514072

group(e-1).

given(exactly(rel(1/250, e-1), e-1, milk)).
given(exactly(rel(1/150, e-1), e-1, peanuts)).

take(e-1, 3-10, 47).

probability(some(3-10, or(peanuts, milk))).

property(allergy_1, [peanuts]).
property(allergy_2, [milk]).

