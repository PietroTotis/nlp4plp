% H572: A machine produces parts which have a 90 percent chance of meeting the required specification.  A sample of 10 parts is taken, find the probability that exactly 2 of these fail to meet the specifications required. ## Solution= 0.19371024

group(1-3).

given(exactly(rel(90/100,1-3), 1-3, meet)).

take_wr(1-3, 2-5, 10).


probability(exactly(2, 2-5, not(meet))).

property(outcome(0), [meet]).

