% H32: What is the probability of drawing either an ace or a queen from a deck of cards? ## Solution= 2/13

group(1-15).
size(1-15, 52).

given(exactly(4, 1-15, ace)).
given(exactly(4, 1-15, queen)).

take(1-15, 1-17, 1).

probability(all(1-17, or(ace, queen))).

property(property, [queen, ace]).

