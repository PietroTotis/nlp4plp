% M467: Two cards have been drawn from the deck of 52 cards without replacing the first one back.  What is the probability of getting first card as king and second card as queen?  In a deck, there are 4 queens and 4 kings. ## Solution= 0.00603318250377074

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, queen)).
given(exactly(4, 1-8, king)).

take(1-8, 1-2, 2).

probability(and(nth(1, 1-2, king), nth(2, 1-2, queen))).

property(card_value, [king, queen]).

