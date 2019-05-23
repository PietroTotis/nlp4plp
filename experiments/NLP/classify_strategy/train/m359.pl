% M359: A card is drawn from a deck of 52 cards.  In a deck, there are 2 red aces.  What is the probability of drawing a red ace? ## Solution= 1/26

group(1-7).
size(1-7, 52).

given(exactly(2, 1-7, red_ace)).

take(1-7, 1-2, 1).

probability(all(1-2, red_ace)).

property(property, [red_ace]).

