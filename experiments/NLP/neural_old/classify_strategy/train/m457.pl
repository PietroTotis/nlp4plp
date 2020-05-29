% M457: Two cards are drawn without replacement from a deck of 52.  In a deck, there are 6 red face cards.  What is the probability the second card is a red face card given the first card is a red face card? ## Solution= 0.0980392156862745

group(1-9).
size(1-9, 52).

given(exactly(6, 1-9, red_face)).

take(1-9, 1-2, 2).
observe(nth(1, 1-2, red_face)).

probability(nth(2, 1-2, red_face)).

property(card_value, [red_face]).

