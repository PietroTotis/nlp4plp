% L443: A random car is chosen among all those passing through Trafalgar Square on a certain day.  The probability that the car is yellow is 3/100: the probability that the driver is blonde is 1/5 ; and the probability that the car is yellow and the driver is blonde is 1/50.  Find the conditional probability that the driver is blonde given that the car is yellow. ## Solution= 2/3

group(cars).

given(exactly(rel(1/5, cars), cars, blonde)).
given(exactly(rel(3/100, cars), cars, yellow)).
given(exactly(rel(1/50, cars), cars, and(blonde, yellow))).

take(cars, 3-4, 1).
observe(all(3-4, yellow)).

probability(all(3-4, blonde)).

property(color, [yellow]).
property(hair, [blonde]).

