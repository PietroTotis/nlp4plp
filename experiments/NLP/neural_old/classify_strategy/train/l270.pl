% L270: Determine the probability that two cards drawn from a deck of 52 cards with 4 aces, are both aces. ## Solution= 1/221

group(1-10).
size(1-10, 52).

given(exactly(4, 1-10, ace)).

take(1-10, 1-6, 2).

probability(all(1-6, ace)).

property(property, [ace]).

