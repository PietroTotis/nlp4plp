% M316: Two cards are drawn without replacement from a standard deck of 52.  Each deck contains 26 black cards, of which 13 are spades.  What is the probability that the second is black, given that the first is a spade? ## Solution= 0.490196078431373

group(1-10).
size(1-10, 52).

given(exactly(26, 1-10, black)).
given(exactly(13, 1-10, and(black, spade))).

take(1-10, 1-2, 2).
observe(nth(1, 1-2, spade)).

probability(nth(2, 1-2, black)).

property(colour, [black]).
property(suit, [spade]).

