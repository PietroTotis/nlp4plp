% M306: A card is drawn from a standard deck of 52 cards.  In a deck, the 7 of spades is unique.  What is the probability the 7 of spades is drawn? ## Solution= 1/52

group(1-8).
size(1-8, 52).

given(exactly(1, 1-8, spade7)).

take(1-8, 1-2, 1).

probability(all(1-2, spade7)).

property(card, [spade7]).

