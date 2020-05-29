% H474: The probability is 0.02 that a virus will survive application of a certain vaccine.  What is the probability that in a batch of 500 viruses, fifteen or more will survive treatment? ## Solution= .0814

group(1-7).

given(exactly(rel(0.02,1-7), 1-7, survive)).

take_wr(1-7, 2-8, 500).


probability(atleast(15, 2-8, survive)).

property(outcome(0), [survive]).

