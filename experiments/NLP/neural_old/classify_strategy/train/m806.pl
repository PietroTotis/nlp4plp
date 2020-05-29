% M806: Research shows that in the US, 51 percent of adults aged 18-21 work full time, 27 percent are students, and 24 percent both work full time and are students.  If you choose a person from this age group at random, what is the probability that the person works full time, is a student, or both? ## Solution= 0.54

group(1-11).

given(exactly(rel(51/100, 1-11), 1-11, full_time)).
given(exactly(rel(27/100, 1-11), 1-11, student)).
given(exactly(rel(24/100, 1-11), 1-11, and(full_time, student))).

take(1-11, 2-5, 1).

probability(all(2-5, or(and(full_time, student), or(full_time, student)))).

property(students, [student]).
property(full_time, [full_time]).

