% H586: What is the probability that a family of 4 children will contain 4 girls? ## Solution= 1/16

group(1-10).
size(1-10, 2).

given(exactly(1, 1-10, v(1-10,0))).
given(exactly(1, 1-10, girl)).

take_wr(1-10, 1-7, 4).


probability(all(1-7, girl)).

property(outcome(0), [girl, v(1-10,0)]).

