% L913:  If an aircraft is present in a certain area, a radar correctly registers its presence with probability 0.99.  If it is not present, the radar falsely registers an aircraft presence with probability 0.10.  We assume that an aircraft is present with probability 0.05.  What is the probability of false alarm? ## Solution= 0.095

group(pop).
given(exactly(rel(0.05, pop), pop, disease)).

given(exactly(rel(0.99, pop, disease), pop, and(disease, positive))).
given(exactly(rel(0.10, pop, not(disease)), pop, and(not(disease), positive))).

take(pop, person, 1).

probability(all(person, and(not(disease), positive))).

property(disease, [disease]).
property(test, [positive, negative]).
