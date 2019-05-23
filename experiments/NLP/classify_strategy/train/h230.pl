% H230: On a multiple-choice exam with four choices for each question, a student either knows the answer to a question or marks it at random.  Suppose the student knows answers to 60 percent of the exam questions.  If she marks the answer to question 1 correctly, what is the probability that she knows the answer to that question? ## Solution= 6/7

group(1-10).

given(exactly(rel(1/4, 1-10, random), 1-10, and(correctly, random))).
given(exactly(rel(1/1, 1-10, know), 1-10, and(correctly, know))).
given(exactly(rel(60/100, 1-10), 1-10, know)).
given(exactly(u, 1-10, random)).

take(1-10, 3-7, 1).
observe(all(3-7, correctly)).

probability(all(3-7, know)).

property(knows, [random, know]).
property(correct, [correctly]).

