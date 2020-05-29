% L201: Suppose that we play bridge.  The deck of 52 cards contains 13 spades.  Each player receives 13 cards.  What is the probability that south receives exactly 8 spades, and north the remaining 5? ## Solution= ?

group(2-2).
size(2-2, 52).

group(rest(4-6)).

given(exactly(13, 2-2, spade)).

take(rest(4-6), 4-13, 13).
take(2-2, 4-6, 13).

probability(and(exactly(5, 4-13, spade), exactly(8, 4-6, spade))).

property(property, [spade]).

