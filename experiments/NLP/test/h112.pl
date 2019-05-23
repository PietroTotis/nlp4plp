% H112: You draw a card at random from a deck that contains 3 black cards and 7 red cards.  What is the probability of drawing a red card? ## Solution= .7

group(1-9).

given(exactly(7, 1-9, red)).
given(exactly(3, 1-9, black)).

take(1-9, 2-9, 1).

probability(all(2-9, red)).

property(property, [black, red]).

