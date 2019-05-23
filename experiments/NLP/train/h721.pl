% H721: The probability that a doctor correctly diagnoses a particular illness is 0.7.  Given that the doctor makes an incorrect diagnosis, the probability that the patient enters a law suit is 0.9.  What is the probability that the doctor makes an incorrect diagnosis and the patient sues? ## Solution= .27

group(1-7).

given(exactly(rel(.9, 1-7, incorrect), 1-7, and(incorrect, sue))).
given(exactly(u, 1-7, incorrect)).
given(exactly(rel(.7, 1-7), 1-7, correctly)).

take(1-7, 3-7, 1).

probability(and(all(3-7, incorrect), all(3-7, sue))).

property(diagnoses, [incorrect, correctly]).
property(property, [sue]).

