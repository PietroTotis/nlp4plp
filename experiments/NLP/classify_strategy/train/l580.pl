% L580: Len just wrote a multiple-choice test with 15 questions, each having four choices.  Len is sure that he got exactly 9 of the first 12 questions correct, but he guessed randomly on the last 3 questions.  What is the probability that he will get at least 80 percent on the test? ## Solution= 1/64

group(2-24).
size(2-24, 4).

given(exactly(1, 2-24, correct)).
given(exactly(1, 2-24, v(2-24,1))).
given(exactly(1, 2-24, v(2-24,2))).
given(exactly(1, 2-24, v(2-24,0))).

take_wr(2-24, 2-18, 3).


probability(all(2-18, correct)).

property(outcome(0), [v(2-24,0), v(2-24,2), correct, v(2-24,1)]).

