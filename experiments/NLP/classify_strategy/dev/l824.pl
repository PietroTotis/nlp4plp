% L824: In answering a question on a multiple choice test, a student either knows the answer or guesses.  Let 3/4 be the probability that he knows the answer and 1/4 be the probability that he guesses.  Assuming that a student who guesses at the answer will be correct with probability 1/4, what is the probability that the student knows the answer given that he answered it correctly? ## Solution= 12/13

group(1-4).

given(exactly(rel(1/4, 1-4, guess), 1-4, and(correct, guess))).
given(exactly(rel(1/4, 1-4), 1-4, guess)).
given(exactly(rel(3/4, 1-4), 1-4, and(correct, know))).

take(1-4, 3-23, 1).
observe(all(3-23, correct)).

probability(all(3-23, know)).

property(solution, [correct]).
property(know, [guess, know]).

