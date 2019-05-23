% H570: Suppose we take a random sample of 5 items from a large number of items which are known to be 10 percent defective.  What is the probability that our sample contains all defectives? ## Solution= .00001

group(1-23).

given(exactly(rel(10/100,1-23), 1-23, defective)).

take_wr(1-23, 1-9, 5).


probability(all(1-9, defective)).

property(outcome(0), [defective]).

