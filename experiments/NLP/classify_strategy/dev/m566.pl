% M566: You draw two cards from a deck.  In a deck, there are 13 cards in each suit: hearts, clubs, diamonds and spades.  What is the probability that you draw two cards from a deck and both of them are hearts? ## Solution= 0.0588235294117647

group(1-7).
size(1-7, 52).

given(exactly(13, 1-7, hearts)).

take(1-7, 3-9, 2).

probability(all(3-9, hearts)).

property(suit, [hearts]).

