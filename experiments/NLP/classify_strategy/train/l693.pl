% L693: For a recent year, 0.99 of the incarcerated population is adults and 0.07 is female adults.  If an incarcerated person is selected at random, find the probability that the person is a female given that she is an adult. ## Solution= 7/99

group(1-10).

given(exactly(rel(0.07, 1-10), 1-10, and(adult, female))).
given(exactly(rel(0.99, 1-10), 1-10, adult)).

take(1-10, 2-4, 1).
observe(all(2-4, adult)).

probability(all(2-4, female)).

property(adult, [adult]).
property(female, [female]).

