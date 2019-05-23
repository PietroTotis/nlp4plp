% M565: You draw two cards from a deck.  In a deck, there are 3 face cards - king, queen, or jack - in each of the four suits.  What is the probability that both of them are face cards? ## Solution= 0.0497737556561086

group(1-7).
size(1-7, 52).

given(exactly(12, 1-7, face)).

take(1-7, 1-4, 2).

probability(all(1-4, face)).

property(card_type, [face]).

