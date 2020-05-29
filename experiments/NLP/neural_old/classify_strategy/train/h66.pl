% H66: One selects a card from a deck of cards.  A deck of cards is composed of 13 hearts, 13 clubs, 13 spades, and 13 diamonds.  Compute the probability that the card is clubs. ## Solution= .25

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, diamond)).
given(exactly(13, 1-7, hearts)).
given(exactly(13, 1-7, club)).
given(exactly(13, 1-7, spade)).

take(1-7, 1-4, 1).

probability(all(1-4, club)).

property(suit, [club, hearts, diamond, spade]).

