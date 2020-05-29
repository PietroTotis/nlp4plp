% L497: The probability that a visit to a particular car dealer results in neither buying a second-hand car nor a Japanese car is 55 percent.  Of those coming to the dealer, 25 percent buy a second-hand car and 30 percent buy a Japanese car.  What is the probability that a visit leads to buying a second-hand Japanese car? ## Solution= 0.1

group(cars).

given(exactly(rel(25/100, cars), cars, second-hand)).
given(exactly(rel(55/100, cars), cars, and(neither, nor))).
given(exactly(rel(30/100, cars), cars, japanese)).

take(cars, 3-4, 1).

probability(and(all(3-4, second-hand), all(3-4, japanese))).

property(second, [neither, second-hand]).
property(japanese, [japanese, nor]).

