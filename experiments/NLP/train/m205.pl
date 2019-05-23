% M205: A card is selected at random from a pack of 52 cards.  There are 13 hearts in the pack.  What is the probability that the card is a heart? ## Solution= 13/52

group(1-9).
size(1-9, 52).

given(exactly(13, 1-9, heart)).

take(1-9, 1-2, 1).

probability(all(1-2, heart)).

property(suit, [heart]).

