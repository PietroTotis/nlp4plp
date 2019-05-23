% M231: A card is drawn at random from a deck of 52 cards.  The 3 of diamond is unique.  What is the probability of getting the 3 of diamond? ## Solution= 1/52

group(1-9).
size(1-9, 52).

given(exactly(1, 1-9, diamond)).

take(1-9, 1-2, 1).

probability(all(1-2, diamond)).

property(diamond3, [diamond]).

