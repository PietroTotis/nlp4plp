% L344: We draw 4 cards at the same time from a deck of 52, not noting the order.  The deck contains 4 Kings, 4 Queens, 4 Jacks and 4 Aces.  Calculate the probability of drawing one King, Queen, Jack and Ace. ## Solution= 768/812175

group(1-11).
size(1-11, 52).

given(exactly(4, 1-11, jack)).
given(exactly(4, 1-11, king)).
given(exactly(4, 1-11, ace)).
given(exactly(4, 1-11, queen)).

take(1-11, 1-4, 4).

probability(and(exactly(1, 1-4, king), and(exactly(1, 1-4, queen), and(exactly(1, 1-4, jack), exactly(1, 1-4, ace))))).

property(property, [king, queen, jack, ace]).

