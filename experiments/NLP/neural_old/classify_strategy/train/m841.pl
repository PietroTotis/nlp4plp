% M841: A multiple - choice quiz has three questions.  Each with five answer choices.  Only one of the choices is correct.  You have no idea what the answer is to any question and have to guess each answer.  Find the probability of answering at least one of the questions correctly. ## Solution= 0.488

group(4-17).
size(4-17, 5).

given(exactly(1, 4-17, v(4-17,3))).
given(exactly(1, 4-17, correct)).
given(exactly(1, 4-17, v(4-17,1))).
given(exactly(1, 4-17, v(4-17,2))).
given(exactly(1, 4-17, v(4-17,0))).

take_wr(4-17, 4-15, 3).


probability(atleast(1, 4-15, correct)).

property(outcome(0), [v(4-17,3), v(4-17,0), v(4-17,2), correct, v(4-17,1)]).

