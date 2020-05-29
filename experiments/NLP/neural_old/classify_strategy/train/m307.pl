% M307: A card is drawn from a standard deck of 52 cards.  A standard deck contains four 7.  What is the probability that a 7 is drawn? ## Solution= 1/13

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, 7)).

take(1-8, 1-2, 1).

probability(all(1-2, 7)).

property(card_value, [7]).

