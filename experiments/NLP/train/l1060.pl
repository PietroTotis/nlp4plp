% L1060: If a person visits his primary care physician, suppose that the probability that he will have blood test work is 0.44, the probability that he will have an X-ray is 0.24, the probability that he will have an MRI is 0.21, the probability that he will have blood test and an X-ray is 0.08, the probability that he will have blood test and an MRI is 0.11, the probability that he will have an X-ray and an MRI is 0.07, and the probability that he will have blood test, an X-ray, and an MRI is 0.03.  What is the probability that a person visiting his PCP will have at least one of these things done to him/her? ## Solution= 0.66

group(probabilities).

given(exactly(rel(0.07, probabilities), probabilities, and(mri, x-ray))).
given(exactly(rel(0.08, probabilities), probabilities, and(blood, x-ray))).
given(exactly(rel(0.44, probabilities), probabilities, blood)).
given(exactly(rel(0.21, probabilities), probabilities, mri)).
given(exactly(rel(0.24, probabilities), probabilities, x-ray)).
given(exactly(rel(0.03, probabilities), probabilities, and(blood, and(mri, x-ray)))).
given(exactly(rel(0.11, probabilities), probabilities, and(blood, mri))).

take(probabilities, 2-4, 1).

probability(all(2-4, or(or(blood, x-ray), mri))).

property(mri, [mri]).
property(x-ray, [x-ray]).
property(blood, [blood]).

