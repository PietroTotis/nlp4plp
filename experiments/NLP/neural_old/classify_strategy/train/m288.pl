% M288: Each of the 9 letters of the phrase ` L U C K Y D R A W ' is written on separate, identical cards.  These 9 cards are put with a 10th identical, blank card.  The 10 cards are shuffled and cards are drawn one at a time, at random.  Once a card is drawn it is NOT replaced.  What is the probability that the first card drawn has a letter on it? ## Solution= 9/10

group(3-3).
size(3-3, 10).

given(exactly(1, 3-3, blank)).
given(exactly(9, 3-3, letter)).

take(3-3, 5-8, 1).

probability(nth(1, 5-8, letter)).

property(property, [letter, blank]).

