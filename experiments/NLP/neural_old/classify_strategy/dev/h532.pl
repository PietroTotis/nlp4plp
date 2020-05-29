% H532: The probability that a biased coin falls heads is 1/4.  Find the probability of at least one head in 2 throws. ## Solution= 7/16

group(1-6).

given(exactly(rel(1/4,1-6), 1-6, head)).

take_wr(1-6, 2-11, 2).


probability(atleast(1, 2-11, head)).

property(outcome(0), [head]).

