% M466: We draw a card from a given deck of cards.  In a deck, there are 4 Jacks and 4 Kings.  What is the probability of not getting a jack or king? ## Solution= 11/13

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, jack)).
given(exactly(4, 1-8, king)).

take(1-8, 1-4, 1).

probability(and(none(1-4, jack), none(1-4, king))).

property(card_value, [king, jack]).

