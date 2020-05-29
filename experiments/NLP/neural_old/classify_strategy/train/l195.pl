% L195: A student answers a multiple choice examination question that offers four possible answers.  Suppose the probability that the student knows the answer to the question is .8 and the probability that the student will guess is .2.  Assume that if the student guesses, the probability of selecting the correct answer is .25.  If the student correctly answers a question, what is the probability that the student really knew the correct answer? ## Solution= 0.941176470588235

group(students).

given(exactly(rel(0.8, students), students, and(correct, know))).
given(exactly(rel(0.2, students), students, guess)).
given(exactly(rel(0.25, students, guess), students, and(correct, guess))).

take(students, 4-3, 1).
observe(all(4-3, correct)).

probability(all(4-3, know)).

property(correctness, [correct]).
property(knowledge, [guess, know]).

