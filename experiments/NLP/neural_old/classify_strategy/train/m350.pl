% M350: A card is drawn from single deck of 52 cards.  In a deck, there are 2 black kings.  What is the probability of drawing a black king? ## Solution= 1/26

group(1-7).
size(1-7, 52).

given(exactly(2, 1-7, black_king)).

take(1-7, 1-2, 1).

probability(all(1-2, black_king)).

property(property, [black_king]).

