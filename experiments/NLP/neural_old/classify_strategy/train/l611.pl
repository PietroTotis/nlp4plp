% L611: Each of 2 balls is painted either black or gold and then placed in an urn.  Suppose that each ball is colored black with probability 1/2 and that these events are independent.  Suppose that you obtain information that the gold paint has been used, and thus at least one of the balls is painted gold.  Compute the conditional probability that both balls are painted gold. ## Solution= 1/3

group(1-4).
size(1-4, 2).

given(exactly(1, 1-4, gold)).
given(exactly(1, 1-4, black)).

take_wr(1-4, 1-6, 2).
observe(atleast(1, 1-6, gold)).


probability(exactly(2, 1-6, gold)).

property(outcome(0), [black, gold]).

