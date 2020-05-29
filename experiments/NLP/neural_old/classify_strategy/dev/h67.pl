% H67: There are 10 cards.  4 of them are of green color and another 6 are of orange color.  Steve picks a card at random.  What is the probability that the card is green? ## Solution= .4

group(1-4).
size(1-4, 10).

given(exactly(4, 1-4, green)).
given(exactly(6, 1-4, orange)).

take(1-4, 3-4, 1).

probability(all(3-4, green)).

property(property, [orange, green]).

