% M238: There are 52 cards in a deck, only one Queen of Hearts and 26 black cards.  Two cards are picked.  What is the probability of drawing a Queen of Hearts and then a black card? ## Solution= 1/102

group(1-7).
size(1-7, 52).

given(exactly(26, 1-7, black)).
given(exactly(1, 1-7, queen_hearts)).

take(1-7, 2-2, 2).

probability(and(nth(1, 2-2, queen_hearts), nth(2, 2-2, black))).

property(card, [queen_hearts, black]).

