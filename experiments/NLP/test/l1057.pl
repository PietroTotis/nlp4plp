% L1057: The probability that a senior citizen in a nursing home without a pneumonia shot will get pneumonia is 0.45.  What is the probability that a senior citizen without pneumonia shot will not get pneumonia? ## Solution= 0.55

group(1-6).

given(exactly(rel(0.45,1-6), 1-6, pneumonia)).

take_wr(1-6, 1-16, 1).


probability(all(1-16, not(pneumonia))).

property(outcome(0), [pneumonia]).

