% L189: Cards are dealt, one at a time, from a standard 52 card deck.  In a deck there are 13 spades.  If the first 2 cards are both spades, what is the probability that the next 3 cards are also spades? ## Solution= 0.0084183673

group(1-15).
size(1-15, 52).

group(rest(3-5)).

given(exactly(13, 1-15, spade)).

take(1-15, 3-5, 2).
observe(all(3-5, spade)).
take(rest(3-5), 3-18, 3).

probability(all(3-18, spade)).

property(property, [spade]).

