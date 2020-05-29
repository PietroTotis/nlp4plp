% L296: Two cards are drawn from a well-shuffled ordinary deck of 52 cards, containing 4 aces.  What is the probability that they are both aces if the first card is not replaced? ## Solution= 1/221

group(1-9).
size(1-9, 52).

given(exactly(4, 1-9, ace)).

take(1-9, 1-2, 2).

probability(all(1-2, ace)).

property(property, [ace]).

