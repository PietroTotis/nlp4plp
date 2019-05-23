% L617: In a family with 4 children, what is the probability of a 2 girls and two boys? ## Solution= 3/8

group(1-6).
size(1-6, 2).

given(exactly(1, 1-6, boy)).
given(exactly(1, 1-6, girl)).

take_wr(1-6, 1-3, 4).


probability(and(exactly(2, 1-3, girl), exactly(2, 1-3, boy))).

property(outcome(0), [boy, girl]).

