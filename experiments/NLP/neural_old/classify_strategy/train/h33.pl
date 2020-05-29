% H33: What are the odds that you will draw neither an ace nor a queen if you draw a card at random from a deck of cards? ## Solution= 11/13

group(1-24).
size(1-24, 52).

given(exactly(4, 1-24, ace)).
given(exactly(4, 1-24, queen)).

take(1-24, 1-19, 1).

probability(and(none(1-19, ace), none(1-19, queen))).

property(property, [queen, ace]).

