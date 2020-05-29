% L1070: In an actuarial course in probability, an instructor has decided to give his class a weekly quiz consisting of 5 multiple-choice questions taken from a pool of previous SOA P/1 exams.  Each question has 4 answer choices, of which 1 is correct and the other 3 are incorrect.  What is the probability of getting all 5 right answers? ## Solution= 1/1024

group(3-10).
size(3-10, 4).

given(exactly(1, 3-10, v(3-10,1))).
given(exactly(1, 3-10, correct)).
given(exactly(1, 3-10, v(3-10,0))).
given(exactly(1, 3-10, v(3-10,2))).

take_wr(3-10, 3-6, 5).


probability(all(3-6, correct)).

property(outcome(0), [v(3-10,1), v(3-10,2), v(3-10,0), correct]).

