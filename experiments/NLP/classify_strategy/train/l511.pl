% L511: A family is chosen at random from all three-child families.  What is the probability that the chosen family has one boy and two girls if the family has a boy among the three children? ## Solution= 3/7

group(1-2).
size(1-2, 2).

given(exactly(1, 1-2, boy)).
given(exactly(1, 1-2, girl)).

take_wr(1-2, 1-4, 3).
observe(atleast(1, 1-4, boy)).


probability(and(exactly(1, 1-4, boy), exactly(2, 1-4, girl))).

property(outcome(0), [boy, girl]).

