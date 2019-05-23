% H968: A student has no knowledge whatsoever of the material to be tested on a true - false examination, so he flips a fair coin in order to determine his response to each question.  What is the probability he scores at least 60 percent on a ten-item examination? ## Solution= .37695

group(1-25).
size(1-25, 2).

given(exactly(1, 1-25, correct)).
given(exactly(1, 1-25, v(1-25,0))).

take_wr(1-25, 2-13, 10).


probability(atleast(6, 2-13, correct)).

property(outcome(0), [correct, v(1-25,0)]).

