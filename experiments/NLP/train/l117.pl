% L117: A card is chosen at random from a pack of 52 playing cards.  There are 4 kings and 4 queens.  What is the probability of a King or a Queen? ## Solution= 2/13

group(1-13).
size(1-13, 52).

given(exactly(4, 1-13, queen)).
given(exactly(4, 1-13, king)).

take(1-13, 1-2, 1).

probability(all(1-2, or(king, queen))).

property(property, [king, queen]).

