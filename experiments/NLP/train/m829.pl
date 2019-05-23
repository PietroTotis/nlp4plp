% M829: Suppose that a single card is selected from a standard 52 - card deck.  What is the probability that the card drawn is a king?  In a deck, there are 4 kings. ## Solution= 1/13

group(1-14).
size(1-14, 52).

given(exactly(4, 1-14, king)).

take(1-14, 1-5, 1).

probability(all(1-5, king)).

property(value, [king]).

