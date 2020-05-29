% L834: There are 5 percent defective items in a large bulk of items.  What is the probability that a sample of 10 items will include not more than one defective item? ## Solution= 29*19^9/20^10

group(2-10).

given(exactly(rel(0.05,2-10), 2-10, defective)).

take_wr(2-10, 2-12, 10).


probability(not(more_than(1, 2-12, defective))).

property(outcome(0), [defective]).

