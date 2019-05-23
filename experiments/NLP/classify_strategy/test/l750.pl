% L750: The probability of gene mutation under certain conditions is 0.00006.  What is the probability of a gene under these conditions not mutating? ## Solution= 0.99994

group(2-7).

given(exactly(rel(0.00006,2-7), 2-7, conditions)).

take_wr(2-7, 2-12, 1).


probability(all(2-12, not(conditions))).

property(outcome(0), [conditions]).

