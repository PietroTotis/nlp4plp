% H459: A team of three students Amy, Bella, and Carol answer questions in a quiz.  A question is answered by Amy, Bella, or Carol with probability 1/2, 1/3, or 1/6, respectively.  The probability of Amy, Bella, or Carol answering a question correctly is 4/5, 3/5, or 3/5, respectively.  What is the probability that the team answers a question correctly? ## Solution= .7

group(1-5).
size(1-5, 3).

given(exactly(rel(3/5, 1-5, carol), 1-5, and(carol, correctly))).
given(exactly(rel(1/3, 1-5), 1-5, bella)).
given(exactly(rel(1/6, 1-5), 1-5, carol)).
given(exactly(rel(4/5, 1-5, amy), 1-5, and(amy, correctly))).
given(exactly(rel(3/5, 1-5, bella), 1-5, and(bella, correctly))).
given(exactly(rel(1/2, 1-5), 1-5, amy)).

take(1-5, 4-10, 1).

probability(all(4-10, correctly)).

property(name, [amy, carol, bella]).
property(correct, [correctly]).

