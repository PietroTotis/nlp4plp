% M318: If five cards are drawn without replacement from a standard deck of 52, consisting of 13 cards of each suit, diamonds, hearts, clubs and spades.  What is the probability that all the cards are the same suit? ## Solution= 0.00198079231692677

group(1-11).
size(1-11, 52).

given(exactly(13, 1-11, hearts)).
given(exactly(13, 1-11, spade)).
given(exactly(13, 1-11, diamond)).
given(exactly(13, 1-11, club)).

take(1-11, 1-3, 5).

probability(all_same(1-3,suit)).

property(suit, [club, hearts, diamond, spade]).

