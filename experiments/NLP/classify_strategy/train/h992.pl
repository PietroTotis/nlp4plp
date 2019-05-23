% H992: Errors are known to occur in a digitized message in a communications channel ; the probability an individual bit is incorrectly transmitted is 0.001 and the errors are assumed to be independent.  Find the probability of at most 2 errors in a message of 10,000 bits. ## Solution= .00276

group(1-19).

given(exactly(rel(.001,1-19), 1-19, incorrectly)).

take_wr(1-19, 1-9, 10000).


probability(atmost(2, 1-9, incorrectly)).

property(outcome(0), [incorrectly]).

