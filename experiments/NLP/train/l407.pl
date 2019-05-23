% L407: A family has five children.  Assuming that the probability of a girl on each birth was 0.5 and that the five births were independent, what is the probability the family has at least one girl, given that they have at least one boy? ## Solution= 30/31

group(1-5).
size(1-5, 2).

given(exactly(1, 1-5, boy)).
given(exactly(1, 1-5, girl)).

take_wr(1-5, 2-17, 5).
observe(atleast(1, 2-17, boy)).


probability(atleast(1, 2-17, girl)).

property(outcome(0), [boy, girl]).

