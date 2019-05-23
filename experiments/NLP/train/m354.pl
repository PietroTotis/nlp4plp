% M354: A card is drawn from a deck of 52 cards.  Each deck contains 13 spades and 13 diamonds.  What is the probability of drawing either a spade or diamond? ## Solution= 1/2

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, diamond)).
given(exactly(13, 1-7, spade)).

take(1-7, 1-2, 1).

probability(all(1-2, or(spade, diamond))).

property(suit, [diamond, spade]).

