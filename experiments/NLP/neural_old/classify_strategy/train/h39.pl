% H39: One selects a card from a deck of cards.  A deck of cards is composed of 4 suits: hearts, diamonds, spades, and clubs.  Compute the probability that the suit is clubs. ## Solution= 1/4

group(1-7).
size(1-7, 52).

given(exactly(rel(1/4, 1-7), 1-7, diamond)).
given(exactly(rel(1/4, 1-7), 1-7, hearts)).
given(exactly(rel(1/4, 1-7), 1-7, club)).
given(exactly(rel(1/4, 1-7), 1-7, spade)).

take(1-7, 1-4, 1).

probability(all(1-4, club)).

property(suit, [club, hearts, diamond, spade]).

