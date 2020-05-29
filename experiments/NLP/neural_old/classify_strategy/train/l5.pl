% L5: A card is drawn at random from a deck of 52 cards.  The 3 of diamond is unique.  Find the probability of getting the 3 of diamond. ## Solution= 1/52

group(1-9).
size(1-9, 52).

given(exactly(1, 1-9, diamond)).

take(1-9, 3-9, 1).

probability(all(3-9, diamond)).

property(type, [diamond]).

