% L794: A couple have three children.  What is the probability that among the children, there will be at least one boy or at least one girl? ## Solution= 1

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, boy)).
given(exactly(1, 1-5, girl)).

take_wr(1-5, 1-2, 3).


probability(or(atleast(1, 1-2, boy), atleast(1, 1-2, girl))).

property(outcome(0), [boy, girl]).

