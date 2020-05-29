% L572:  A euchre deck has 24 cards: the 9, 10, jack, queen, king, and ace of the 4 suits.  If you were to deal out five cards from this deck, what is the probability that they will be a 10, jack, queen, king, and ace all from the same suit? ## Solution= 1/10626

group(deck).

given(exactly(1, deck, and(9, hearts))).
given(exactly(1, deck, and(10, hearts))).
given(exactly(1, deck, and(jack, hearts))).
given(exactly(1, deck, and(queen, hearts))).
given(exactly(1, deck, and(king, hearts))).
given(exactly(1, deck, and(ace, hearts))).
given(exactly(1, deck, and(9, diamonds))).
given(exactly(1, deck, and(10, diamonds))).
given(exactly(1, deck, and(jack, diamonds))).
given(exactly(1, deck, and(queen, diamonds))).
given(exactly(1, deck, and(king, diamonds))).
given(exactly(1, deck, and(ace, diamonds))).
given(exactly(1, deck, and(9, clubs))).
given(exactly(1, deck, and(10, clubs))).
given(exactly(1, deck, and(jack, clubs))).
given(exactly(1, deck, and(queen, clubs))).
given(exactly(1, deck, and(king, clubs))).
given(exactly(1, deck, and(ace, clubs))).
given(exactly(1, deck, and(9, spades))).
given(exactly(1, deck, and(10, spades))).
given(exactly(1, deck, and(jack, spades))).
given(exactly(1, deck, and(queen, spades))).
given(exactly(1, deck, and(king, spades))).
given(exactly(1, deck, and(ace, spades))).

take(deck, deal, 5).

probability(and(all_same(deal, suit), and(all_diff(deal, rank), all(deal, not(9))))).

property(suit, [hearts, diamonds, clubs, spades]).
property(rank, [9, 10, jack, queen, king, ace]).