% M96: One card is drawn at random from a pack of 52 cards.  In each pack, there are 12 face cards: Jack, Queen and King only.  What is the probability that the card drawn is a face card? ## Solution= 3/13

group(1-12).
size(1-12, 52).

given(exactly(12, 1-12, face)).

take(1-12, 1-2, 1).

probability(all(1-2, face)).

property(property, [face]).

