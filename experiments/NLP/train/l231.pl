% L231: From all families with two children, one family is selected at random and then a child is selected from it at random and is found to be a girl.  What is the probability that she came from a family with two girls?  Assume that each child is a boy or a girl with probability 1/2, independently of one another. ## Solution= 0.33333333

group(1-17).
size(1-17, 2).

given(exactly(1, 1-17, boy)).
given(exactly(1, 1-17, girl)).

take_wr(1-17, 1-11, 2).
observe(atleast(1, 1-11, girl)).


probability(exactly(2, 1-11, girl)).

property(outcome(0), [boy, girl]).

