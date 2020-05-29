% H369: The probability of snow for each of the next three days is 3/4.  What is the probability that it will not snow any of those days? ## Solution= 1/64

group(1-4).

given(exactly(rel(3/4,1-4), 1-4, snow)).

take_wr(1-4, 2-13, 3).


probability(all(2-13, not(snow))).

property(outcome(0), [snow]).

