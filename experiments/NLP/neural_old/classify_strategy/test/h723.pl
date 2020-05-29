% H723: In a certain region of the country it is known from past, experience that the probability of selecting an adult over 40 years of age with cancer is 0.05, If the probability of a doctor correctly diagnosing a person with cancer as having the disease is 0.78 and the probability of incorrectly diagnosing a person without cancer as having the disease is 0.06, what is the probability that, a person is diagnosed as having cancer? ## Solution= .0960

group(1-4).

given(exactly(rel(0.05, 1-4), 1-4, cancer)).
given(exactly(rel(0.06, 1-4, without), 1-4, and(diagnose, without))).
given(exactly(rel(0.78, 1-4, cancer), 1-4, and(cancer, diagnose))).
given(exactly(u, 1-4, without)).

take(1-4, 1-74, 1).

probability(all(1-74, diagnose)).

property(diagnoses, [diagnose]).
property(cancer, [without, cancer]).

