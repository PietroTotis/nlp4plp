% L97: Two cards are drawn from the top of a well-shuffled deck of 52 cards.  13 of the cards are Diamonds.  What is the probability that they are both Diamonds? ## Solution= 1/17

group(1-11).
size(1-11, 52).

given(exactly(13, 1-11, diamond)).

take(1-11, 1-2, 2).

probability(all(1-2, diamond)).

property(property, [diamond]).

