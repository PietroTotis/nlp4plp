% L723:  A vaccine has a 90 percent probability of being effective in preventing a certain disease.  The probability of getting the disease if a person is not vaccinated is 50 percent.  In a certain geographic region, 25 percent of the people get vaccinated.  If a person is selected at random, find the probability that he or she will contract the disease. ## Solution= 0.4

group(pop).
given(exactly(rel(0.25, pop), pop, vaccine)).
given(exactly(rel(0.50, pop, not(vaccine)), pop, and(not(vaccine), disease))).
given(exactly(rel(0.10, pop, vaccine), pop, and(vaccine, disease))).

take(pop, person, 1).

probability(all(person, disease)).

property(disease, [disease]).
property(vaccine, [vaccine]).

