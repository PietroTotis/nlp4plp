% H516: Because not all airline passengers show up for their reserved seat, an airline sells 325 tickets for a flight that holds only 320 passengers.  The probability that a passenger does not show up is 0.025, and the passengers behave independently.  What is the probability that every passenger who shows up can take the flight? ## Solution= .9101

group(2-5).

given(exactly(rel(0.025,2-5), 2-5, not_show)).

take_wr(2-5, 3-14, 325).


probability(atleast(5, 3-14, not_show)).

property(outcome(0), [not_show]).

