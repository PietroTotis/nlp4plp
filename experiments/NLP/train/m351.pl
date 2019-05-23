% M351: A card is drawn from a deck of 52 cards.  In a deck, half of the cards are red and half are black.  What is the probability of drawing a white queen? ## Solution= 0

group(1-7).
size(1-7, 52).

given(exactly(rel(1/2, 1-7), 1-7, black)).
given(exactly(rel(1/2, 1-7), 1-7, red)).

take(1-7, 1-2, 1).

probability(all(1-2, white)).

property(colour, [white, black, red]).

