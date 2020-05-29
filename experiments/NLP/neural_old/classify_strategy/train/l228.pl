% L228: Two cards are drawn at random from a deck of 52 cards without replacement.  There are 4 Kings.  What is the probability that exactly one is a King, given that at most one is a King? ## Solution= 8/55

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, king)).

take(1-9, 1-2, 2).
observe(atmost(1, 1-2, king)).

probability(exactly(1, 1-2, king)).

property(property, [king]).

