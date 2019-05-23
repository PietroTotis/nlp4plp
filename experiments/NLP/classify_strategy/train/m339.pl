% M339: Two cards are drawn from single deck of 52 cards.  Each deck contains 4 Jacks and 4 Queens.  What is the probability of selecting a Jack from the first card and queen from the second card with replacement? ## Solution= 1/169

group(1-7).
size(1-7, 52).

given(exactly(4, 1-7, queen)).
given(exactly(4, 1-7, jack)).

take_wr(1-7, 1-2, 2).

probability(and(nth(1, 1-2, jack), nth(2, 1-2, queen))).

property(card_value, [queen, jack]).

