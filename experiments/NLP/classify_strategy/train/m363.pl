% M363: Using a standard deck of cards: 52 cards in four suits, 13 in each suit: A 2 3 4 5 6 7 8 9 10 J Q K.  What is the probability of selecting a jack from a shuffled deck of cards? ## Solution= 0.0769230769230769

group(1-4).
size(1-4, 52).

given(exactly(4, 1-4, j)).

take(1-4, 2-8, 1).

probability(all(2-8, j)).

property(value, [j]).

