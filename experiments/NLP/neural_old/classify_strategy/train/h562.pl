% H562: If the births of boys and girls are assumed to be equally likely, what is the probability that in a family of 8 children, there are exactly 4 girls? ## Solution= 70/256

group(1-25).
size(1-25, 2).

given(exactly(1, 1-25, boy)).
given(exactly(1, 1-25, girl)).

take_wr(1-25, 1-22, 8).


probability(exactly(4, 1-22, girl)).

property(outcome(0), [boy, girl]).

