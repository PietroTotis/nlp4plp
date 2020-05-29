% M859: A public health researcher examines the medical records of a group of 937 men who died in 1999 and discovers that 210 of the men died from causes related to heart disease.  Moreover, 312 of the 937 men had at least one parent who suffered from heart disease, and, of these 312 men, 102 died from causes related to heart disease.  Calculate the probability that a man randomly selected from this group died of causes related to heart disease, given that neither of his parents suffered from heart disease. ## Solution= 0.1728

group(1-14).
size(1-14, 937).

given(exactly(312, 1-14, at_least_one)).
given(exactly(210, 1-14, heart_disease)).
given(exactly(102, 1-14, and(at_least_one, heart_disease))).

take(1-14, 3-6, 1).
observe(none(3-6, at_least_one)).

probability(all(3-6, heart_disease)).

property(parents_with_hd, [at_least_one]).
property(cause_of_death, [heart_disease]).

