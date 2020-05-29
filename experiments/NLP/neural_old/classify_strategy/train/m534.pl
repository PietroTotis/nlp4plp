% M534: A single card is chosen at random from a standard deck of 52 playing cards.  In a deck, there are 4 suits: hearts, diamonds, clubs and spades.  What is the probability of choosing a card that is not a heart? ## Solution= 3/4

group(1-3).
size(1-3, 4).

given(exactly(1, 1-3, club)).
given(exactly(1, 1-3, spade)).
given(exactly(1, 1-3, diamond)).
given(exactly(1, 1-3, hearts)).

take_wr(1-3, 1-5, 1).


probability(all(1-5, not(hearts))).

property(outcome(0), [club, hearts, diamond, spade]).

