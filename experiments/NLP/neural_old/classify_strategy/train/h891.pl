% H891: From an ordinary deck of 52 cards consisting of 13 spades, cards are drawn at random and with replacement.  What is the probability that, of the first eight cards drawn, four are spades? ## Solution= 0.086517333984375

group(1-4).
size(1-4, 52).

given(exactly(13, 1-4, spade)).

take_wr(1-4, 2-11, 8).

probability(exactly(4, 2-11, spade)).

property(property, [spade]).

