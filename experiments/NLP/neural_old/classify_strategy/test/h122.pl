% H122: A magician showed a magic trick where he picked one card from a standard deck, with 4 suits, each containing 1 queen.  Determine what the probability is that the card will be a queen card? ## Solution= 4/52

group(1-15).
size(1-15, 52).

given(exactly(4, 1-15, queen)).

take(1-15, 1-11, 1).

probability(all(1-11, queen)).

property(property, [queen]).

