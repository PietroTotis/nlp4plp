% M56: If a five card hand is dealt from a deck of 52 cards.  There are 13 heart cards.  What is the probability the hand contains exactly one heart? ## Solution= 0.411419567827131

group(1-10).
size(1-10, 52).

given(exactly(13, 1-10, heart)).

take(1-10, 1-5, 5).

probability(exactly(1, 1-5, heart)).

property(suit, [heart]).

