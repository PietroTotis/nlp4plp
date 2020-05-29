% L660: The probability that a student owns a car is 0.65, and the probability that a student owns a computer is 0.82.  If the probability that a student owns both is 0.55, what is the probability that a given student owns neither a car nor a computer? ## Solution= 0.08

group(students).

given(exactly(rel(0.65, students), students, car)).
given(exactly(rel(0.82, students), students, computer)).
given(exactly(rel(0.55, students), students, and(car, computer))).

take(students, 2-15, 1).

probability(and(none(2-15, car), none(2-15, computer))).

property(car, [car]).
property(computer, [computer]).

