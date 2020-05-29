% H81: A gin hand consists of 10 cards from a deck of 52 cards, containing 13 hearts, 13 diamonds, 13 clubs, and 13 spades.  Find the probability that a gin hand has all 10 cards of the same suit. ## Solution= 7.23*(10^-8)

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, spade)).
given(exactly(13, 1-10, hearts)).
given(exactly(13, 1-10, club)).
given(exactly(13, 1-10, diamond)).

take(1-10, 1-3, 10).

probability(all_same(1-3,suit)).

property(suit, [club, hearts, diamond, spade]).

