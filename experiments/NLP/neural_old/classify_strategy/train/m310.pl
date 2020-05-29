% M310: A card is drawn from a standard deck of 52 cards.  Each deck contains 4 Queens and 4 Kings.  What is the probability that a king or queen is drawn? ## Solution= 0.153846153846154

group(1-8).
size(1-8, 52).

given(exactly(4, 1-8, queen)).
given(exactly(4, 1-8, king)).

take(1-8, 1-2, 1).

probability(all(1-2, or(king, queen))).

property(card_value, [king, queen]).

