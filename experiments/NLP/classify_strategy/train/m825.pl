% M825: One half percent of the population has a particular disease.  A test is developed for the disease.  The test gives a false positive 3 percent of the time and a false negative 2 percent of the time.  What is the probability that a random person tests positive? ## Solution= 0.03475

group(1-6).

given(exactly(rel(2/100, 1-6, positive), 1-6, and(-, positive))).
given(exactly(rel(99.5/100, 1-6), 1-6, negative)).
given(exactly(rel(3/100, 1-6, negative), 1-6, and(+, negative))).
given(exactly(rel(0.5/100, 1-6), 1-6, positive)).

take(1-6, 4-8, 1).

probability(all(4-8, +)).

property(test, [+, -]).
property(disease, [positive, negative]).

