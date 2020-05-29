% M55:  If 3 percent of the population has a specific disease, and the test for this disease is 92 percent accurate, what is the probability that a person does not have the disease given that the test result is positive? ## Solution= 0.73764259

group(pop).
given(exactly(rel(0.03, pop), pop, disease)).


group(test1).
given(exactly(rel(0.92, test1), test1, correct)).

take(test1, t1, 1).
take(pop, person, 1).


observe(or(and(all(person, disease), all(t1, correct)),and(all(person, not(disease)), all(t1, not(correct))))).

probability(all(person, not(disease))).

property(disease, [disease]).
property(test, [correct]).