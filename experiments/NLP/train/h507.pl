% H507: A multiple-choice test has 60 questions, each with 5 possible answers of which only one is the correct answer.  What is the probability that sheer guesswork yields from 10 to 14 correct answers? ## Solution= .582

group(1-2).
size(1-2, 5).

given(exactly(1, 1-2, correct)).
given(exactly(1, 1-2, v(1-2,3))).
given(exactly(1, 1-2, v(1-2,0))).
given(exactly(1, 1-2, v(1-2,1))).
given(exactly(1, 1-2, v(1-2,2))).

take_wr(1-2, 1-3, 60).


probability(and(atleast(10, 1-3, correct), atmost(14, 1-3, correct))).

property(outcome(0), [v(1-2,0), v(1-2,1), correct, v(1-2,3), v(1-2,2)]).

