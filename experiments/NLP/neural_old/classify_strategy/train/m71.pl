% M71: Suppose we draw a card from a deck of 52 playing cards.  A deck of cards is composed of 13 hearts, 13 clubs, 13 spades, and 13 diamonds.  What is the probability that we draw a spade? ## Solution= 1/4

group(1-12).
size(1-12, 52).

given(exactly(13, 1-12, diamond)).
given(exactly(13, 1-12, spade)).
given(exactly(13, 1-12, club)).
given(exactly(13, 1-12, hearts)).

take(1-12, 1-5, 1).

probability(all(1-5, spade)).

property(suit, [club, hearts, diamond, spade]).

