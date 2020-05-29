% L552:  In a certain region of the country it is known from experience that the probability of selecting an adult over 40 years of age with cancer is 0.05.  If the probability of a doctor correctly diagnosing a person with cancer as having the disease is 0.78 and the probability of incorrectly diagnosing a person without cancer as having the disease is 0.06, what is the probability that, a person is diagnosed as having cancer? ## Solution= 0.096

group(pop).
given(exactly(rel(0.05, pop), pop, disease)).

given(exactly(rel(0.78, pop, disease), pop, and(disease, positive))).
given(exactly(rel(0.06, pop, not(disease)), pop, and(not(disease), positive))).

take(pop, person, 1).

probability(all(person, positive)).

property(disease, [disease]).
property(test, [positive, negative]).
