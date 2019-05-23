% L975: Sixty percent of the families in a certain community own their own car, thirty percent own their own home, and twenty percent own both their own car and their own home.  If a family is randomly chosen, what is the probability that this family owns a car or a house but not both? ## Solution= 1/2

group(1-5).

given(exactly(rel(60/100, 1-5), 1-5, car)).
given(exactly(rel(30/100, 1-5), 1-5, home)).
given(exactly(rel(20/100, 1-5), 1-5, and(car, home))).

take(1-5, 2-3, 1).

probability(all(2-3, and(not(and(home, car)), or(home, car)))).

property(car, [car]).
property(home, [home]).

