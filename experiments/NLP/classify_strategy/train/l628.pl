% L628: A full deck of 52 cards contains 13 hearts.  Pick 8 cards from the deck at random with replacement.  Compute the probability that you get no hearts. ## Solution= (3/4)^8

group(1-3).
size(1-3, 52).

given(exactly(13, 1-3, hearts)).

take_wr(1-3, 2-3, 8).

probability(none(2-3, hearts)).

property(property, [hearts]).

