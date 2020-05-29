% M407: You are dealt two cards from a standard deck that contains 52 cards in four suits, hearts, diamonds, clubs and spades ,13 in each suit: A 2 3 4 5 6 7 8 9 10 J Q K.  What is the probability that they are both red numbered cards of either hearts or diamonds? ## Solution= 0.1153846154

group(1-9).
size(1-9, 52).

given(exactly(9, 1-9, hearts_numbered)).
given(exactly(9, 1-9, diamonds_numbered)).

take(1-9, 1-5, 2).

probability(all(1-5, or(hearts_numbered, diamonds_numbered))).

property(card_value, [hearts_numbered, diamonds_numbered]).

