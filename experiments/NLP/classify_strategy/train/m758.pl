% M758: Four cards are dealt from a standard 52-card deck.  In a deck, there are 4 kings.  Find the probability that the cards are all kings. ## Solution= 3.6937852e-06

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, king)).

take(1-9, 1-2, 4).

probability(all(1-2, king)).

property(value, [king]).

