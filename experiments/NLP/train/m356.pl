% M356: A card is drawn from a deck of 52.  In a deck, there are 4 cards numbered 10 and 26 black cards, of which 2 are numbered 10.  Find the probability of drawing either a black card or number 10. ## Solution= 7/13

group(1-7).
size(1-7, 52).

given(exactly(26, 1-7, black)).
given(exactly(4, 1-7, 10)).
given(exactly(2, 1-7, and(10, black))).

take(1-7, 1-2, 1).

probability(all(1-2, or(10, black))).

property(card_value, [10]).
property(colour, [black]).

