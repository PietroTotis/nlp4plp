% L509: A professor gives only two types of exams, easy and hard.  You will get a hard exam with probability 0.80.  The probability that the first question on the exam will be marked as difficult is 0.90 if the exam is hard and is 0.15 otherwise.  What is the probability that your exam is hard given that the first question on the exam is marked as difficult? ## Solution= 0.96

group(1-8).

given(exactly(rel(15/100, 1-8, easy), 1-8, and(difficult, easy))).
given(exactly(rel(90/100, 1-8, hard), 1-8, and(difficult, hard))).
given(exactly(rel(20/100, 1-8), 1-8, easy)).
given(exactly(rel(80/100, 1-8), 1-8, hard)).

take(1-8, 4-7, 1).
observe(all(4-7, difficult)).

probability(all(4-7, hard)).

property(question, [difficult]).
property(exam, [hard, easy]).

