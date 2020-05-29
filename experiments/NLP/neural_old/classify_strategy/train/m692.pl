% M692: Assume that the probability of the birth of a child of a particular gender is 50 percent.  In a family with four children, what is the probability that all four children are boys? ## Solution= 0.0625

group(1-10).

given(exactly(rel(50/100,1-10), 1-10, boy)).

take_wr(1-10, 1-7, 4).


probability(all(1-7, boy)).

property(outcome(0), [boy]).

