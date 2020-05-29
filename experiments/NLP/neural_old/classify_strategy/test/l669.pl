% L669: In building new homes, a contractor finds that the probability of a home buyer selecting a two-car garage is 0.70 and of selecting a one-car garage is 0.20.  Find the probability that the buyer will select no garage.  The builder does not build houses with three-car or more garages. ## Solution= 0.1

group(1-4).

given(exactly(rel(0.2, 1-4), 1-4, one-car)).
given(exactly(rel(0.7, 1-4), 1-4, two-car)).

take(1-4, 2-3, 1).

probability(and(none(2-3, two-car), none(2-3, one-car))).

property(property, [two-car, one-car]).

