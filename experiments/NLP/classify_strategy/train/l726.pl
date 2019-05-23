% L726: The probability that a customer will buy a television set and buy an extended warranty is 0.03.  If the probability that a customer will purchase a television set is 0.11, find the probability that a customer, buying a television set will also purchase the extended warranty. ## Solution= 3/11

group(probabilities).

given(exactly(rel(0.03, probabilities), probabilities, and(television, warranty))).
given(exactly(rel(0.11, probabilities), probabilities, television)).

take(probabilities, 2-17, 1).
observe(all(2-17, television)).

probability(all(2-17, warranty)).

property(tv, [television]).
property(warranty, [warranty]).

