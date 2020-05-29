% M358: A card is drawn from a deck of 52 cards.  In a deck, there are 12 picture cards.  What is the probability of drawing a picture card? ## Solution= 3/13

group(1-7).
size(1-7, 52).

given(exactly(12, 1-7, picture)).

take(1-7, 1-2, 1).

probability(all(1-2, picture)).

property(kind, [picture]).

