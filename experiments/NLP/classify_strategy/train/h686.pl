% H686:  Students in a college program have two opportunities to pass an exam required for graduation.  The probability that a student passes the test the first time is 0.8.  For those who fail the first time, the probability of passing the test the second time is 0.6.  Find the probability that a randomly selected student passes the test. ## Solution= .92

group(students).

given(exactly(rel(0.8, students), students, pass1)).
given(exactly(rel(0.6, students, not(pass1)), students, pass2)).

take(students, 4-8, 1).

probability(all(4-8, or(pass1, pass2))).

property(test1, [pass1]).
property(test2, [pass2]).
