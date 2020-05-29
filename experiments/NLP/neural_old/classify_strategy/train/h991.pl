% H991: Errors are known to occur in a digitized message in a communications channel ; the probability an individual bit is incorrectly transmitted is 0.001 and the errors are assumed to be independent.  Find the probability that at most 2 errors occur in a sequence of 10 bits. ## Solution= 0.99999988

group(1-19).

given(exactly(rel(.001,1-19), 1-19, incorrectly)).

take_wr(1-19, 1-9, 10).


probability(atmost(2, 1-9, incorrectly)).

property(outcome(0), [incorrectly]).

