% M355: A card is drawn from a deck of 52 cards.  In a deck, there are 13 clubs and 13 hearts.  What is the probability of drawing a club or a heart? ## Solution= 1/2

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, heart)).
given(exactly(13, 1-7, club)).

take(1-7, 1-2, 1).

probability(all(1-2, or(club, heart))).

property(suit, [club, heart]).

