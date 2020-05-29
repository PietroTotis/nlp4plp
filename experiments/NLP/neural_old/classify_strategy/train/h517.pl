% H517: Because not all airline passengers show up for their reserved seat, an airline sells 325 tickets for a flight that holds only 320 passengers.  The probability that a passenger does not show up is 0.025, and the passengers behave independently.  What is the probability that the flight departs with empty seats? ## Solution= .8234

group(2-5).

given(exactly(rel(.025,2-5), 2-5, not_show)).

take_wr(2-5, 3-7, 325).


probability(more_than(5, 3-7, not_show)).

property(outcome(0), [not_show]).

