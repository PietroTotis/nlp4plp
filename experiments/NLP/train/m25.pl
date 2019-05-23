% M25: Assume a certain type of respiratory allergy usually affects 1 person out of 20, while food intolerance affect 3.5 percent of people.  Assuming that the two events are independent, what is the probability of having both problems? ## Solution= 0.00175

group(1-23).

given(exactly(rel(1/20, 1-23), 1-23, allergy)).
given(exactly(rel(3.5/100, 1-23), 1-23, intolerance)).

take(1-23, 2-12, 1).

probability(all(2-12, and(allergy, intolerance))).

property(intolerance, [intolerance]).
property(allergy, [allergy]).

