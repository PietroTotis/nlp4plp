% L323:  The pap test makes a correct diagnosis with probability 95 percent.  Given that the test is positive for a lady, what is the probability that she really has the disease.  Assume that one in every 2000 women has the disease. ## Solution= 19/2018

group(pop).

given(exactly(rel(1/2000, pop), pop, disease)).

group(tests).
given(exactly(rel(0.95, tests), tests, correct)).

take(tests, test, 1).
take(pop, person, 1).

observe(or(and(all(person, disease), all(test, correct)),and(all(person, not(disease)), all(test, not(correct))))).

probability(all(person, disease)).

property(disease, [disease]).
property(test, [correct]).

