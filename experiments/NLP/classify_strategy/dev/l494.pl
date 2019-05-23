% L494: You draw at random five cards from a standard deck of 52 cards.  The deck contains 4 aces, 4 kings and 4 queens.  What is the probability that there is an ace among the five cards and a king or queen? ## Solution= 0.17647674

group(1-10).
size(1-10, 52).

given(exactly(4, 1-10, ace)).
given(exactly(4, 1-10, king)).
given(exactly(4, 1-10, queen)).

take(1-10, 1-6, 5).

probability(and(some(1-6, ace), or(some(1-6, king), some(1-6, queen)))).

property(property, [king, queen, ace]).

