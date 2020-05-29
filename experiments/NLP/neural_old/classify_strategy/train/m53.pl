% M53:  The probability of having a particular disease is 5 percent.  The test to determine if a person has this disease is 83 percent accurate.  What is the probability that a randomly selected person tests positive? ## Solution= 0.2044335


group(pop).
given(exactly(rel(0.05, pop), pop, disease)).


group(test1).
given(exactly(rel(0.83, test1), test1, correct)).

take(test1, t1, 1).
take(pop, person, 1).


observe(or(and(all(person, disease), all(t1, correct)),and(all(person, not(disease)), all(t1, not(correct))))).

probability(all(person, disease)).

property(disease, [disease]).
property(test, [correct]).