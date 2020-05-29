% M221: A bag of sweets contains 5 Chews, 3 Mints and 2 Toffees.  If a sweet is chosen at random from the bag, what is the probability that it is not a toffee? ## Solution= 0.8

group(1-2).

given(exactly(2, 1-2, toffee)).
given(exactly(5, 1-2, chew)).
given(exactly(3, 1-2, mint)).

take(1-2, 2-3, 1).

probability(none(2-3, toffee)).

property(sweet, [chew, mint, toffee]).

