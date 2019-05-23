% M314: In a class of 28 students, 15 earned an A on the final exam, 10 earned an A for the entire course, and 7 earned an A for both the final exam and the entire course.  What is the probability that a randomly selected student in this class did not earn an A on the final exam and did not earn an A for the entire course? ## Solution= 0.357142857142857

group(1-3).
size(1-3, 28).

given(exactly(15, 1-3, final)).
given(exactly(7, 1-3, and(entire, final))).
given(exactly(10, 1-3, entire)).

take(1-3, 2-9, 1).

probability(and(none(2-9, final), none(2-9, entire))).

property(entire, [entire]).
property(final, [final]).

