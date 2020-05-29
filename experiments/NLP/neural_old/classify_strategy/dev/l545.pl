% L545:  The probability that a doctor correctly diagnoses a particular illness is 0.7.  Given that the doctor makes an incorrect diagnosis, the probability that the patient enters a law suit is 0.9.  What is the probability that the doctor makes an incorrect diagnosis and the patient sues? ## Solution= 0.27

group(cases).

given(exactly(rel(0.7, cases), cases, correct)).
given(exactly(rel(0.9, cases, not(correct)), cases, and(not(correct), lawsuit))).

take(cases, case, 1).

probability(all(case, and(not(correct), lawsuit))).

property(doctor, [correct]).
property(patient, [lawsuit]).
