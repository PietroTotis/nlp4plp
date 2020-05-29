% M94: Out of 17 applicants 8 boys and 9 girls, two persons are to be selected for the job.  What is the probability that at least one of the selected persons will be a girl? ## Solution= 0.794117647058824

group(1-4).
size(1-4, 17).

given(exactly(8, 1-4, boy)).
given(exactly(9, 1-4, girl)).

take(1-4, 1-12, 2).

probability(atleast(1, 1-12, girl)).

property(sex, [boy, girl]).

