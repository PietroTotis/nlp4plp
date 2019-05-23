% H499: A blood disease is found in 2 percent of the persons in a certain population.  A new blood test will correctly identify 96 percent of the persons with the disease and 94 percent of the persons without the disease.  What is the probability that a person who is called positive by the blood test actually has the disease? ## Solution= 0.24615385

group(1-15).

given(exactly(rel(96/100, 1-15, disease), 1-15, and(disease, positive))).
given(exactly(u, 1-15, without)).
given(exactly(rel(2/100, 1-15), 1-15, disease)).
given(exactly(rel(94/100, 1-15, without), 1-15, and(negative, without))).

take(1-15, 3-7, 1).
observe(all(3-7, positive)).

probability(all(3-7, disease)).

property(test, [positive, negative]).
property(disease, [without, disease]).

