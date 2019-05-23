% H650: Suppose that the probability that an item produced by a certain machine will be defective is 0.1 and that all items are independent.  Find the probability that a sample of 10 will contain at most one defective item. ## Solution= .7361

group(1-7).

given(exactly(rel(0.1,1-7), 1-7, defective)).

take_wr(1-7, 1-12, 10).


probability(atmost(1, 1-12, defective)).

property(outcome(0), [defective]).

