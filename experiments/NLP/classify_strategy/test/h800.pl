% H800: The probability that a lab specimen contains high levels of contamination is 0.10.  Five samples are checked, and the samples are independent.  What is the probability that none contains high levels of contamination? ## Solution= 0.59049

group(1-6).

given(exactly(rel(.1,1-6), 1-6, high)).

take_wr(1-6, 1-5, 5).


probability(all(1-5, not(high))).

property(outcome(0), [high]).

