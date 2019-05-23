% M863: A blood test indicates the presence of a particular disease 95 percent of the time when the disease is actually present.  The same test indicates the presence of the disease 0.5 percent of the time when the disease is not actually present.  One percent of the population actually has the disease.  Calculate the probability that a person actually has the disease given that the test indicates the presence of the disease. ## Solution= 0.65743945

group(3-5).

given(exactly(rel(99/100, 3-5), 3-5, not)).
given(exactly(rel(1/100, 3-5), 3-5, have)).
given(exactly(rel(95/100, 3-5, have), 3-5, and(have, positive))).
given(exactly(rel(0.5/100, 3-5, not), 3-5, and(not, positive))).

take(3-5, 4-6, 1).
observe(all(4-6, positive)).

probability(all(4-6, have)).

property(test, [positive]).
property(disease, [not, have]).

