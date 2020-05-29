% M860: An insurance company examines its pool of auto insurance customers and gathers the following information: All customers insure at least one car.  70 percent of the customers insure more than one car.  20 percent of the customers insure a sports car.  Of those customers who insure more than one car, 15 percent insure a sports car.  Calculate the probability that a randomly selected customer insures exactly one car and that car is not a sports car. ## Solution= 0.205

group(1-18).

given(exactly(rel(15/100, 1-18, more_than_1), 1-18, and(more_than_1, sport))).
given(exactly(rel(70/100, 1-18), 1-18, more_than_1)).
given(exactly(rel(20/100, 1-18), 1-18, sport)).

take(1-18, 5-8, 1).

probability(and(none(5-8, more_than_1), none(5-8, sport))).

property(type_of_car, [sport]).
property(cars_insured, [more_than_1]).

