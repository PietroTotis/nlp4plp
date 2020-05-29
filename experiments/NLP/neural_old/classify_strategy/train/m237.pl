% M237: There are 52 cards in a deck, and there are 4 Aces.  What is the probability of drawing two Aces out of a deck at random? ## Solution= 1/221

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, ace)).

take(1-7, 2-8, 2).

probability(all(2-8, ace)).

property(card, [ace]).

