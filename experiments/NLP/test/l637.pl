% L637:  Assume 10 percent of people have a certain disease.  A test gives the correct diagnosis with probability of 0.8 ; that is, if the person is sick, the test will be positive with probability 0.8, but if the person is not sick, the test will be positive with probability 0.2.  A random person from the population has tested positive for the disease.  What is the probability that he is actually sick? ## Solution= 8/26


group(pop).
given(exactly(rel(0.10, pop), pop, disease)).

given(exactly(rel(0.8, pop, disease), pop, and(disease, positive))).
given(exactly(rel(0.2, pop, not(disease)), pop, and(not(disease), positive))).

take(pop, person, 1).

observe(all(person, positive)).

probability(all(person, disease)).

property(disease, [disease]).
property(test, [positive, negative]).

