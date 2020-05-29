% H988: Twenty percent of the IC chips made in a plant are defective.  Assume that the chips are produced according to a binomial process.  Find the probability that at most 13 defectives occur in a sample of 100 IC chips. ## Solution= 0.046912237

group(1-6).

given(exactly(rel(20/100,1-6), 1-6, defective)).

take_wr(1-6, 1-10, 100).


probability(atmost(13, 1-10, defective)).

property(outcome(0), [defective]).

