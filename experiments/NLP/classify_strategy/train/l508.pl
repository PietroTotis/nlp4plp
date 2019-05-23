% L508: A professor gives only two types of exams, easy and hard.  You will get a hard exam with probability 0.80.  The probability that the first question on the exam will be marked as difficult is 0.90 if the exam is hard and is 0.15 otherwise.  What is the probability that the first question on your exam is marked as difficult. ## Solution= 0.75

group(1-8).

given(exactly(rel(15/100, 1-8, easy), 1-8, and(difficult, easy))).
given(exactly(rel(90/100, 1-8, hard), 1-8, and(difficult, hard))).
given(exactly(rel(20/100, 1-8), 1-8, easy)).
given(exactly(rel(80/100, 1-8), 1-8, hard)).

take(1-8, 4-8, 1).

probability(all(4-8, difficult)).

property(question, [difficult]).
property(exam, [hard, easy]).

