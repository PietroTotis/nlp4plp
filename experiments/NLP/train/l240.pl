% L240: Three cards are drawn at random, each possibility is equally likely, from an ordinary deck of 52 cards, without replacement.  The deck of cards contains 13 hearts and 13 spades.  Find the probability p that two are spades and one is a heart. ## Solution= 39/850

group(1-17).
size(1-17, 52).

given(exactly(13, 1-17, spade)).
given(exactly(13, 1-17, heart)).

take(1-17, 1-2, 3).

probability(and(exactly(2, 1-2, spade), exactly(1, 1-2, heart))).

property(property, [heart, spade]).

