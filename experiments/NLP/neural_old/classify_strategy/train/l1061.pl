% L1061: An entrance exam consists of two subjects: Math and english.  The probability that a student fails the math test is 0.20.  The probability of failing english is 0.15, and the probability of failing both subjects is 0.03.  What is the probability that the student will fail at least one of these subjects? ## Solution= 0.32

group(students).

given(exactly(rel(0.2, students), students, math)).
given(exactly(rel(0.15, students), students, english)).
given(exactly(rel(0.03, students), students, and(english, math))).

take(students, 4-7, 1).

probability(all(4-7, or(math, english))).

property(math, [math]).
property(english, [english]).

