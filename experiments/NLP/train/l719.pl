% L719: There is a 0.39 probability that John will purchase a new car, a 0.73 probability that Mary will purchase a new car, and a 0.36 probability that both will purchase a new car.  Find the probability that neither will purchase a new car. ## Solution= 0.24

group(probablities).

given(exactly(rel(0.73, probablities), probablities, mary)).
given(exactly(rel(0.36, probablities), probablities, and(john, mary))).
given(exactly(rel(0.39, probablities), probablities, john)).

take(probablities, 2-3, 1).

probability(and(none(2-3, john), none(2-3, mary))).

property(john, [john]).
property(mary, [mary]).

