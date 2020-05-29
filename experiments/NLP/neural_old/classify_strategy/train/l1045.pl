% L1045: A hand of 5 cards is dealt from a deck.  A standard deck of 52 playing cards contains 4 aces.  What is the probability that the hand contains 5 aces? ## Solution= 0

group(2-3).
size(2-3, 52).

given(exactly(4, 2-3, ace)).

take(2-3, 1-5, 5).

probability(all(1-5, ace)).

property(property, [ace]).

