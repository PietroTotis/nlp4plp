% L718: The probability that a person owns a car is 0.80, that a person owns a boat is 0.30, and that a person owns both a car and a boat is 0.12.  Find the probability that a person owns either a boat or a car. ## Solution= 0.98

group(probabilities).

given(exactly(rel(0.8, probabilities), probabilities, car)).
given(exactly(rel(0.3, probabilities), probabilities, boat)).
given(exactly(rel(0.12, probabilities), probabilities, and(boat, car))).

take(probabilities, 2-3, 1).

probability(all(2-3, or(car, boat))).

property(car, [car]).
property(boat, [boat]).

