% M455: At P-Town High School, the probability that a student takes Computer Programming and Spanish is 0.15.  The probability that a student takes Computer Programming is 0.4.  What is the probability that a student takes Spanish given that the student is taking Computer Programming? ## Solution= 0.375

group(students).

given(exactly(rel(0.4, students), students, programming)).
given(exactly(rel(0.15, students), students, and(programming, spanish))).

take(students, 3-7, 1).
observe(all(3-7, programming)).

probability(all(3-7, spanish)).

property(programming, [programming]).
property(spanish, [spanish]).

