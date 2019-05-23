% M693: Assume that the probability of the birth of a child of a particular gender is 50 percent.  In a family with four children, what is the probability that all four children are of the same gender? ## Solution= 0.125

group(1-10).

given(exactly(rel(50/100,1-10), 1-10, gender)).

take_wr(1-10, 1-7, 4).


probability(all_same(1-7,outcome(0))).

property(outcome(0), [gender]).

