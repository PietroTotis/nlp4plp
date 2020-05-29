% L696: At a large university, the probability that a student takes calculus and is on the dean 's list is 0.042.  The probability that a student is on the dean 's list is 0.21.  Find the probability that the student is taking calculus, given that he or she is on the dean 's list. ## Solution= 0.2

group(students).

given(exactly(rel(0.042, students), students, and(calculus, list))).
given(exactly(rel(0.21, students), students, list)).

take(students, 3-3, 1).
observe(all(3-3, list)).

probability(all(3-3, calculus)).

property(calculus, [calculus]).
property(list, [list]).

