% M470: We have drawn two cards from a given deck of 52 cards without replacement.  In a deck, there are 4 Kings.  What is the probability that both are kings? ## Solution= 0.00452488687782805

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, king)).

take(1-9, 1-5, 2).

probability(all(1-5, king)).

property(value, [king]).

