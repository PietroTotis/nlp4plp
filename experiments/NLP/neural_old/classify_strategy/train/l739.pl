% L739: A question on a multiple-choice test has five answers.  What is the probability that you guess the correct answer to the question? ## Solution= 1/5

group(2-10).
size(2-10, 5).

given(exactly(1, 2-10, v(2-10,2))).
given(exactly(1, 2-10, correct)).
given(exactly(1, 2-10, v(2-10,0))).
given(exactly(1, 2-10, v(2-10,3))).
given(exactly(1, 2-10, v(2-10,1))).

take_wr(2-10, 2-7, 1).


probability(all(2-7, correct)).

property(outcome(0), [v(2-10,2), v(2-10,1), v(2-10,3), correct, v(2-10,0)]).

