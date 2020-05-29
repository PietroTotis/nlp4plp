% M717: Assume that the probability of the birth of a child of a particular gender is 50 percent.  In a family with five children, what is the probability that all the children are of the same gender? ## Solution= 0.0625

group(1-10).
size(1-10, 2).

given(exactly(1, 1-10, v(1-10,0))).
given(exactly(1, 1-10, male)).

take_wr(1-10, 1-7, 5).


probability(all_same(1-7,outcome(0))).

property(outcome(0), [male, v(1-10,0)]).

