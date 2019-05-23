% L825:  A laboratory blood test is 99 percent effective in detecting a certain disease when it is in fact, present.  However, the test also yields a false positive result for 0.5 percent of the healthy person tested.  If 0.1 percent of the population actually has the disease, what is the probability that a person has the disease given that his test result is positive? ## Solution= 22/133

group(pop).
given(exactly(rel(0.001, pop), pop, disease)).

given(exactly(rel(0.99, pop, disease), pop, and(disease, positive))).
given(exactly(rel(0.005, pop, not(disease)), pop, and(not(disease), positive))).

take(pop, person, 1).

observe(all(person, positive)).

probability(all(person, disease)).

property(disease, [disease]).
property(test, [positive, negative]).

