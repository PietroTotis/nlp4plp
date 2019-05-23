% H325: Four cards are drawn from a pack of 52 cards.  There are 4 aces.  Determine the probability that all are aces. ## Solution= 1/270725

group(1-10).
size(1-10, 52).

given(exactly(4, 1-10, ace)).

take(1-10, 1-2, 4).

probability(all(1-2, ace)).

property(property, [ace]).

