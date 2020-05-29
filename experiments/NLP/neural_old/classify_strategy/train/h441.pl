% H441: We draw the top 7 cards from a well-shuffled standard 52-card deck containing 4 kings.  Find the probability that the 7 cards include exactly 2 kings. ## Solution= ((C(4,2))*(C(48,5)))/(C(52,7))

group(1-12).
size(1-12, 52).

given(exactly(4, 1-12, king)).

take(1-12, 1-6, 7).

probability(exactly(2, 1-6, king)).

property(property, [king]).

