% H999: Antoine brings a bag of 6 bananas to work one day.  Each banana has a probability of 0.3 of being too brown to eat before the 4 o'clock break, and they are independent of one another.  At 4 o'clock, what is the probability that exactly 4 of the bananas are edible? ## Solution= 0.324135

group(2-2).

given(exactly(rel(.3,2-2), 2-2, brown)).

take_wr(2-2, 1-7, 6).


probability(exactly(4, 1-7, not(brown))).

property(outcome(0), [brown]).
