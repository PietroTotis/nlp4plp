% L481: The probability that a family chosen at random from Britain has a combined income above # 40,000 is 0.8.  The probability that a family chosen at random from Britain has an income above # 40,000 and a car is 0.6.  Calculate the probability that a family chosen at random from Britain has a car given that it has a combined income above # 40,000. ## Solution= 0.75

group(families).

given(exactly(rel(8/10, families), families, 40000)).
given(exactly(rel(6/10, families), families, and(40000, car))).

take(families, 3-6, 1).
observe(all(3-6, 40000)).

probability(all(3-6, car)).

property(vehicle, [car]).
property(income, [40000]).

