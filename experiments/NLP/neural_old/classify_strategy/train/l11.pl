% L11: A card is drawn at random from a deck of 52 cards.  The King of heart is unique.  Find the probability of getting the King of heart. ## Solution= 1/52

group(1-9).
size(1-9, 52).

given(exactly(1, 1-9, king)).

take(1-9, 1-2, 1).

probability(all(1-2, king)).

property(type, [king]).

