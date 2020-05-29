% M716: Assume that the probability of the birth of a child of a particular gender is 50 percent.  In a family with five children, what is the probability that all the children are boys? ## Solution= 0.03125

group(1-10).
size(1-10, 2).

given(exactly(1, 1-10, v(1-10,0))).
given(exactly(1, 1-10, boy)).

take_wr(1-10, 1-7, 5).


probability(all(1-7, boy)).

property(outcome(0), [boy, v(1-10,0)]).

