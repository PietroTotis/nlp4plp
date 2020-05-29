% L576: A four-member curling team is randomly chosen from six grade-11 students and nine grade-12 students.  What is the probability that the team has at least one grade-11 student? ## Solution= 0.9077

group(students).

given(exactly(9, students, grade-12)).
given(exactly(6, students, grade-11)).

take(students, 1-4, 4).

probability(atleast(1, 1-4, grade-11)).

property(property, [grade-11, grade-12]).

