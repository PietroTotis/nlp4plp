% M206: A card is selected at random from a pack of 52 cards.  There are 4 aces in the pack.  What is the probability that the card is an ace? ## Solution= 0.0769230769230769

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, ace)).

take(1-9, 1-2, 1).

probability(all(1-2, ace)).

property(property, [ace]).

