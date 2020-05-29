% L919: Two urns contain 5 white and 7 black balls and 3 white and 9 black balls respectively.  One ball is transferred to the second urn and then one ball is drawn from the second urn.  Find the probability that the first ball transferred is black, given that the ball drawn is black? ## Solution= 14/23

group(2-8).

group(urn_1).

group(urn_2).

given(exactly(3, urn_2, white)).
given(exactly(9, urn_2, black)).
given(exactly(5, urn_1, white)).
given(exactly(7, urn_1, black)).

take(urn_1, 2-2, 1).
take(2-8, 2-12, 1).
observe(all(2-12, black)).

union(2-8, [2-2, urn_2]).
probability(all(2-2, black)).

property(property, [white, black]).

