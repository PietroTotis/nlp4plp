% M14: Two cards are drawn together from a pack of 52 cards.  There are 13 spades and 13 hearts.  What is the probability that one is a spade and one is a heart? ## Solution= 13/102

group(1-8).
size(1-8, 52).

given(exactly(13, 1-8, spade)).
given(exactly(13, 1-8, hearts)).

take(1-8, 1-2, 2).

probability(and(exactly(1, 1-2, hearts), exactly(1, 1-2, spade))).

property(suit, [hearts, spade]).

