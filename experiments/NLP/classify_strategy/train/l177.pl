% L177: Consider the problem of selecting two applicants for a job out of a group of five and imagine that the applicants vary in competence, 1 being the best, 2 second best, and so on, for 3, 4, and 5.  These ratings are of course unknown to the employer.  What is the probability the employer selects the best and one of the two poorest applicants, so applicants 1 and 4 or 1 and 5? ## Solution= 0.2

group(1-14).
size(1-14, 5).

given(exactly(1, 1-14, 3)).
given(exactly(1, 1-14, 4)).
given(exactly(1, 1-14, 1)).
given(exactly(1, 1-14, 2)).
given(exactly(1, 1-14, 5)).

take(1-14, 1-7, 2).

probability(and(exactly(1, 1-7, 1), exactly(1, 1-7, or(4, 5)))).

property(grade, [1, 3, 2, 5, 4]).

