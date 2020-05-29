% L321:  Ten percent of a population suffer from a serious disease.  A person suspected of the disease is given two independent tests.  Each test makes a correct diagnosis 90 percent of time.  Find the probability that the person really has the illness given that both tests are positive. ## Solution= 0.9


group(pop).
given(exactly(rel(0.10, pop), pop, disease)).


group(test1).
given(exactly(rel(0.90, test1), test1, correct)).

group(test2).
given(exactly(rel(0.90, test2), test2, correct)).

take(test1, t1, 1).
take(test2, t2, 1).
take(pop, person, 1).


observe(or(and(all(person, disease), all(t1, correct)),and(all(person, not(disease)), all(t1, not(correct))))).
observe(or(and(all(person, disease), all(t2, correct)),and(all(person, not(disease)), all(t2, not(correct))))).

probability(all(person, disease)).

property(disease, [disease]).
property(test, [correct]).