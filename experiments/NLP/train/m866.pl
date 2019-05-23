% M866: A multiple - choice quiz has three questions.  Each with five answer choices.  Only one of the choices is correct.  You have no idea what the answer is to any question and have to guess each answer.  Find the probability of answering the first two questions correctly. ## Solution= 1/25

group(4-17).
size(4-17, 5).

given(exactly(1, 4-17, v(4-17,3))).
given(exactly(1, 4-17, correct)).
given(exactly(1, 4-17, v(4-17,1))).
given(exactly(1, 4-17, v(4-17,2))).
given(exactly(1, 4-17, v(4-17,0))).

take_wr(4-17, 4-15, 3).


probability(and(nth(1, 4-15, correct), nth(2, 4-15, correct))).

property(outcome(0), [v(4-17,3), v(4-17,0), v(4-17,2), correct, v(4-17,1)]).

