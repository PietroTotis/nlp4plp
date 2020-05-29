% H440: We draw the top 7 cards from a well-shuffled standard 52-card deck containing 4 aces.  Find the probability that the 7 cards include exactly 3 aces. ## Solution= ((C(4,3))*(C(48,4)))/(C(52,7))

group(1-12).
size(1-12, 52).

given(exactly(4, 1-12, ace)).

take(1-12, 1-6, 7).

probability(exactly(3, 1-6, ace)).

property(property, [ace]).

