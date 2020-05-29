% H550: Five cards are drawn at random from a pack of 52 playing cards, consisting of 13 cards of each suit, diamonds, hearts, clubs and spades.  what is the probability that they are all from the same suit? ## Solution= 33/16660

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, hearts)).
given(exactly(13, 1-9, spade)).
given(exactly(13, 1-9, diamond)).
given(exactly(13, 1-9, club)).

take(1-9, 1-2, 5).

probability(all_same(1-2,suit)).

property(suit, [club, hearts, diamond, spade]).

