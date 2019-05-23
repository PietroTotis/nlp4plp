% M759: Four cards are dealt from a standard 52-card deck.  In a deck, there are 13 spades.  Find the probability that the cards are all spades. ## Solution= 0.00264105642256903

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, spade)).

take(1-9, 1-2, 4).

probability(all(1-2, spade)).

property(suit, [spade]).

