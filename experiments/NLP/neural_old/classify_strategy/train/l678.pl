% L678: The probability that Sam parks in a no-parking zone and gets a parking ticket is 0.06, and the probability that Sam can not find a legal parking space and has to park in the no-parking zone is 0.20.  On Tuesday, Sam arrives at school and has to park in a no-parking zone.  Find the probability that he will get a parking ticket. ## Solution= 0.3

group(probabilities).

given(exactly(rel(0.06, probabilities), probabilities, and(no-parking, ticket))).
given(exactly(rel(0.2, probabilities), probabilities, no-parking)).

take(probabilities, 3-3, 1).
observe(all(3-3, no-parking)).

probability(all(3-3, ticket)).

property(ticket, [ticket]).
property(parking, [no-parking]).

