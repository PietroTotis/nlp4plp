% H443: You are given a conventional pack of 52 cards containing 4 ace cards.  What is the probability that the top card is an ace? ## Solution= 1/13

group(1-6).
size(1-6, 52).

given(exactly(4, 1-6, ace)).

take(1-6, 2-8, 1).

probability(all(2-8, ace)).

property(property, [ace]).

