% L75: A card is chosen at random from a deck of 52 playing cards.  There are 4 Queens and 4 Kings in a deck of playing cards.  What is the probability the card chosen is a Queen or a King? ## Solution= 2/13

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, king)).
given(exactly(4, 1-9, queen)).

take(1-9, 1-2, 1).

probability(all(1-2, or(queen, king))).

property(property, [king, queen]).

