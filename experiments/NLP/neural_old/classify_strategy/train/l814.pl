% L814: An instructor has a question bank consisting of 300 easy True/False questions, 200 difficult True/False questions, 500 easy multiple choice questions and 400 difficult multiple choice questions.  If a question is selected at random from the question bank, what is the probability that it will be an easy question given that it is a multiple choice question? ## Solution= 5/9

group(1-6).

given(exactly(300, 1-6, and(easy, true/false))).
given(exactly(200, 1-6, and(difficult, true/false))).
given(exactly(500, 1-6, and(choice, easy))).
given(exactly(400, 1-6, and(choice, difficult))).

take(1-6, 2-3, 1).
observe(all(2-3, choice)).

probability(all(2-3, easy)).

property(genre, [true/false, choice]).
property(difficulty, [easy, difficult]).

