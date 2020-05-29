% L484: Suppose that 24 percent of companies in a certain sector of the economy have announced plans to expand in the next year and the other 76 percent will not.  In a sample of twenty companies chosen at random drawn from this population, find the probability that the number of companies which have announced plans to expand in the next year will be precisely three. ## Solution= 0.14837805

group(2-22).

given(exactly(rel(24/100,2-22), 2-22, expand)).
given(exactly(rel(76/100,2-22), 2-22, not)).

take_wr(2-22, 2-25, 20).


probability(exactly(3, 2-25, expand)).

property(outcome(0), [not, expand]).

