% M760: Four cards are dealt from a standard 52-card deck.  In a deck, there are 26 red cards and 26 black cards.  Find the probability that the cards are all the same colour. ## Solution= 0.110444177671068

group(1-9).
size(1-9, 52).

given(exactly(26, 1-9, red)).
given(exactly(26, 1-9, black)).

take(1-9, 1-2, 4).

probability(all_same(1-2,colour)).

property(colour, [black, red]).

