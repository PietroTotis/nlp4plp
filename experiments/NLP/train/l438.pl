% L438: Joanna, a Statistics student, sits down to take her final exam and realizes that she does n't know the answers to any of the questions because she did n't study at all.  If there are 10 multiple choice questions with the options of A through D of which 1 is correct, and on the grading scale a 70 percent is required for a passing C, what is the probability that Joanna will get a 70 percent on her test if she randomly bubbles in answers?  Assume that all questions are of equal point value and there is an equal likelihood that any letter will be correct. ## Solution= 0.00350570678710938

group(2-7).
size(2-7, 4).

given(exactly(1, 2-7, correct)).
given(exactly(1, 2-7, v(2-7,0))).
given(exactly(1, 2-7, v(2-7,1))).
given(exactly(1, 2-7, v(2-7,2))).

take_wr(2-7, 2-55, 10).


probability(atleast(7, 2-55, correct)).

property(outcome(0), [v(2-7,0), v(2-7,1), correct, v(2-7,2)]).

