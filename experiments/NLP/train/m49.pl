% M49: Five cards are dealt from a deck of 52 cards.  Half of the cards are red and half are black.  There are 12 face cards: 6 black and 6 red.  What is the probability of obtaining 2 black cards and 3 red face cards? ## Solution= 0.002501000400160064

group(1-7).
size(1-7, 52).

given(exactly(6, 1-7, and(black, face))).
given(exactly(rel(1/2, 1-7), 1-7, black)).
given(exactly(6, 1-7, and(face, red))).
given(exactly(12, 1-7, face)).
given(exactly(rel(1/2, 1-7), 1-7, red)).

take(1-7, 1-2, 5).

probability(and(exactly(2, 1-2, black), exactly(3, 1-2, and(red, face)))).

property(color, [black, red]).
property(property, [cards]).
property(type, [face]).

