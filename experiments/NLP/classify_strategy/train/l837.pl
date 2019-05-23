% L837: In an examination, 20 questions of true-false type are asked.  Suppose a student tosses a fair coin to determine his answer to each question.  If the coin falls heads, he answers ` true ' ; if it falls tails, he answers ` false '.  Find the probability that he answers at least 12 questions correctly. ## Solution= 0.25172234

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, correctly)).
given(exactly(1, 1-6, v(1-6,0))).

take_wr(1-6, 1-11, 20).


probability(atleast(12, 1-11, correctly)).

property(outcome(0), [correctly, v(1-6,0)]).

