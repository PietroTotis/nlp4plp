% L456: Mr. and Mrs. Smith want to start a family.  They would like to have three children, and hope that each child is a girl.  Assume that each child is a boy or a girl with probability 1/2.  What is the probability that this will occur? ## Solution= 1/8

group(2-7).
size(2-7, 2).

given(exactly(1, 2-7, boy)).
given(exactly(1, 2-7, girl)).

take_wr(2-7, 2-5, 3).


probability(all(2-5, girl)).

property(outcome(0), [boy, girl]).

