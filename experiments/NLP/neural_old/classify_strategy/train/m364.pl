% M364: Using a standard deck of cards: 52 cards in four suits, 13 in each suit: heart, club, diamond and spade.  What is the probability of selecting a heart then a club, with replacement? ## Solution= 0.0625

group(1-4).
size(1-4, 52).

given(exactly(13, 1-4, heart)).
given(exactly(13, 1-4, club)).

take_wr(1-4, 2-8, 2).

probability(and(nth(1, 2-8, heart), nth(2, 2-8, club))).

property(suit, [club, heart]).

