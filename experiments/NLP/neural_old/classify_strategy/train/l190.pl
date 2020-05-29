% L190: Cards are dealt, one at a time, from a standard 52 card deck.  In a deck there are 13 spades.  If the first 4 cards are all spades, what is the probability that the next card is also a spade? ## Solution= 0.1875

group(1-15).
size(1-15, 52).

group(rest(3-5)).

given(exactly(13, 1-15, spade)).

take(1-15, 3-5, 4).
observe(all(3-5, spade)).
take(rest(3-5), 3-17, 1).

probability(all(3-17, spade)).

property(property, [spade]).

