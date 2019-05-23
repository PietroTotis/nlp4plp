% L207: Consider a family which we know has two children.  I tell you that it is not the case that they have two girls.  What is the probability that they have two boys? ## Solution= 1/3

group(1-9).
size(1-9, 2).

given(exactly(1, 1-9, boy)).
given(exactly(1, 1-9, girl)).

take_wr(1-9, 1-3, 2).
observe(not(exactly(2, 1-3, girl))).


probability(exactly(2, 1-3, boy)).

property(outcome(0), [boy, girl]).

