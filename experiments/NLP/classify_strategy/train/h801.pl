% H801: The probability that a lab specimen contains high levels of contamination is 0.10.  Five samples are checked, and the samples are independent.  What is the probability that exactly one contains high levels of contamination? ## Solution= 0.32805

group(1-6).

given(exactly(rel(.1,1-6), 1-6, high)).

take_wr(1-6, 1-5, 5).


probability(exactly(1, 1-5, high)).

property(outcome(0), [high]).

