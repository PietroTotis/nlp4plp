% H296: In a deck of cards there are 52 cards numbered from 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, and 13.  There are 4 cards of each number in the deck.  If you insert 12 more cards with the number 10 on them and you shuffle the deck really good, what is the probability to pull out a card with a number 10 on it? ## Solution= 1/4

group(1-3).

given(exactly(4, 1-3, 1)).
given(exactly(4, 1-3, 2)).
given(exactly(4, 1-3, 8)).
given(exactly(4, 1-3, 3)).
given(exactly(4, 1-3, 9)).
given(exactly(4, 1-3, 4)).
given(exactly(4, 1-3, 5)).
given(exactly(16, 1-3, 10)).
given(exactly(4, 1-3, 6)).
given(exactly(4, 1-3, 11)).
given(exactly(4, 1-3, 7)).
given(exactly(4, 1-3, 12)).
given(exactly(4, 1-3, 13)).

take(1-3, 3-29, 1).

probability(all(3-29, 10)).

property(property, [11, 10, 13, 12, 1, 3, 2, 5, 4, 7, 6, 9, 8]).

