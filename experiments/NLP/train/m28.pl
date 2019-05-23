% M28: What is the probability of drawing a king and a queen consecutively from a deck of 52 cards, without replacement?  There are 4 kings and 4 queens. ## Solution= 4/663

group(1-15).
size(1-15, 52).

given(exactly(4, 1-15, king)).
given(exactly(4, 1-15, queen)).

take(1-15, 1-8, 2).

probability(and(nth(1, 1-8, king), nth(2, 1-8, queen))).

property(type_of_card, [king, queen]).

