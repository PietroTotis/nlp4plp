% M495: Two cards are drawn from a bridge deck.  In a bridge deck, half of the cards are red and half are black.  What is the probability that the second card drawn is red? ## Solution= 0.5

group(1-8).
size(1-8, 52).

given(exactly(rel(1/2, 1-8), 1-8, red)).
given(exactly(rel(1/2, 1-8), 1-8, black)).

take(1-8, 1-2, 2).

probability(nth(2, 1-2, red)).

property(colour, [black, red]).

