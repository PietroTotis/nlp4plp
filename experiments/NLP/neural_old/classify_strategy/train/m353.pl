% M353: A card is drawn from a deck of 52.  Each deck contains 13 heart cards.  What is the probability of drawing a heart? ## Solution= 1/4

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, heart)).

take(1-7, 1-2, 1).

probability(all(1-2, heart)).

property(suit, [heart]).

