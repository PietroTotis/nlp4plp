% M282: Counters labelled A, B, C, D and E are placed in a bag.  The probability of picking letter A is 0.07.  The probability of picking letter B is 0.15.  The probability of picking letter C is 0.26.  The probability of picking letter E is 0.18.  What is the probability of picking B or C? ## Solution= 0.41

group(1-1).

given(exactly(rel(0.15,1-1), 1-1, b)).
given(exactly(u, 1-1, d)).
given(exactly(rel(0.07,1-1), 1-1, a)).
given(exactly(rel(0.26,1-1), 1-1, c)).
given(exactly(rel(0.18,1-1), 1-1, e)).

take_wr(1-1, 6-6, 1).


probability(all(6-6, or(b, c))).

property(outcome(0), [a, c, b, e, d]).

