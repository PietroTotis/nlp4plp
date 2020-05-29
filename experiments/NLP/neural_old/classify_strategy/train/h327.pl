% H327: Four cards are drawn from a pack of 52 cards, containing 13 diamonds, 13 hearts, 13 clubs, and 13 spades.  Determine the probability that they are of the same suit. ## Solution= 44/4165

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, spade)).
given(exactly(13, 1-10, hearts)).
given(exactly(13, 1-10, club)).
given(exactly(13, 1-10, diamond)).

take(1-10, 1-2, 4).

probability(all_same(1-2,suit)).

property(suit, [club, hearts, diamond, spade]).

