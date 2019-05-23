% H990: A manufacturer of soft drink bottles turns out defectives with probability 0.10.  Assume that the bottles are produced according to a binomial process.  Find the probability that there are at least 4 defective bottles among the next 10 bottles produced. ## Solution= .0128

group(1-6).

given(exactly(rel(.1,1-6), 1-6, defective)).

take_wr(1-6, 1-2, 10).


probability(atleast(4, 1-2, defective)).

property(outcome(0), [defective]).

