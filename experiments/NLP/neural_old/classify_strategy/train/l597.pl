% L597: A deck of 52 cards is dealt out.  The deck contains 4 aces.  What is the probability that the 14th card dealt is an ace? ## Solution= 1/13

group(1-2).
size(1-2, 52).

given(exactly(4, 1-2, ace)).

take(1-2, 3-8, 14).

probability(nth(14, 3-8, ace)).

property(property, [ace]).

