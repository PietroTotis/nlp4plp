% L647: Thirty-nine of fifty states are currently under court order to alleviate overcrowding and poor conditions in one or more of their prisons.  If a state is selected at random, find the probability that it is currently under such a court order. ## Solution= 39/50

group(1-4).
size(1-4, 50).

given(exactly(39, 1-4, court)).

take(1-4, 2-3, 1).

probability(all(2-3, court)).

property(property, [court]).

