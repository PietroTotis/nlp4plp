% M90: Two cards are drawn together from a pack of 52 cards.  In a deck there are 13 spades and 13 hearts.  What is the probability that one is a spade and one is a heart? ## Solution= 13/102

group(1-11).
size(1-11, 52).

given(exactly(13, 1-11, hearts)).
given(exactly(13, 1-11, spade)).

take(1-11, 1-2, 2).

probability(and(exactly(1, 1-2, spade), exactly(1, 1-2, hearts))).

property(suit, [hearts, spade]).

