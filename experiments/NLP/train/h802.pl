% H802: The probability that a lab specimen contains high levels of contamination is 0.10.  Five samples are checked, and the samples are independent.  What is the probability that at least one contains high levels of contamination? ## Solution= 0.40951

group(1-6).

given(exactly(rel(.1,1-6), 1-6, high)).

take_wr(1-6, 1-5, 5).


probability(atleast(1, 1-5, high)).

property(outcome(0), [high]).

