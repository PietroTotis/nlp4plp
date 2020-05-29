% L745: A standard deck of cards contains 52 cards, including four queens.  You are going to pick and keep two of the cards.  What is the probability that the second card is a queen if the first card is not a queen? ## Solution= 4/51

group(1-3).
size(1-3, 52).

given(exactly(4, 1-3, queen)).

take(1-3, 2-8, 2).
observe(nth(1, 2-8, not(queen))).

probability(nth(2, 2-8, queen)).

property(property, [queen]).

