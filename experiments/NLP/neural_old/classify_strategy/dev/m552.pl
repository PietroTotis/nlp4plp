% M552: A card is drawn at random from a deck.  In a deck, there are 4 aces and 4 kings.  What is the probability that it is an ace or a king? ## Solution= 2/13

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, king)).
given(exactly(4, 1-9, ace)).

take(1-9, 1-2, 1).

probability(all(1-2, or(ace, king))).

property(card_value, [king, ace]).

