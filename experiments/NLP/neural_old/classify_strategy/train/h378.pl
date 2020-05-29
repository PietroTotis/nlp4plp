% H378: Given that you randomly guess the answers to ten true-false questions, determine the probability that you get all ten correct? ## Solution= 1/1024

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, correct)).
given(exactly(1, 1-5, v(1-5,0))).

take_wr(1-5, 1-11, 10).


probability(all(1-11, correct)).

property(outcome(0), [v(1-5,0), correct]).

