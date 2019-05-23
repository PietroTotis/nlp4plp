% H201: You pick a card out of a deck.  What is the probability of choosing a jack or a queen from a standard deck of 52 playing cards?  There are 4 of each in the deck. ## Solution= 8/52

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, jack)).
given(exactly(4, 1-8, queen)).

take(1-8, 1-4, 1).

probability(all(1-4, or(jack, queen))).

property(property, [queen, jack]).

