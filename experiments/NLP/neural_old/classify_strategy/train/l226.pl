% L226: From a family of three children, a child is selected at random and is found to be a girl.  What is the probability that she came from a family with two girls and one boy?  Assume that each child is a boy or a girl with probability 1/2, independently of one another. ## Solution= 0.428571428571429

group(1-9).
size(1-9, 2).

given(exactly(1, 1-9, boy)).
given(exactly(1, 1-9, girl)).

take_wr(1-9, 1-11, 3).
observe(atleast(1, 1-11, girl)).


probability(and(exactly(2, 1-11, girl), exactly(1, 1-11, boy))).

property(outcome(0), [boy, girl]).

