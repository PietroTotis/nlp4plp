% M544: A single card is chosen at random from a standard deck of 52 playing cards.  In a deck, there are four suits: hearts, clubs, diamonds and spades.  What is the probability of choosing a card that is not a club? ## Solution= 3/4

group(1-3).
size(1-3, 4).

given(exactly(1, 1-3, club)).
given(exactly(1, 1-3, spade)).
given(exactly(1, 1-3, diamond)).
given(exactly(1, 1-3, hearts)).

take_wr(1-3, 3-6, 1).


probability(all(3-6, not(club))).

property(outcome(0), [club, hearts, diamond, spade]).

