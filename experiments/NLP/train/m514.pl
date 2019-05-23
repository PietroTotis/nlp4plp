% M514: A single card is chosen at random from a standard deck of 52 playing cards.  In a deck, there are 4 Aces.  What is the probability of choosing a card that is not an Ace card? ## Solution= 48/52

group(1-11).
size(1-11, 52).

given(exactly(4, 1-11, ace)).

take(1-11, 1-3, 1).

probability(none(1-3, ace)).

property(card_value, [ace]).

