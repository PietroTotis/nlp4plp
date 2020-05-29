% M698: Consider a couple who have four children.  Assume that it is equally likely that each child is a girl or a boy.  Find the probability that at least one of the children is a boy. ## Solution= 0.9375

group(1-7).
size(1-7, 2).

given(exactly(1, 1-7, boy)).
given(exactly(1, 1-7, girl)).

take_wr(1-7, 1-5, 4).


probability(atleast(1, 1-5, boy)).

property(outcome(0), [boy, girl]).

