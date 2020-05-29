% L493: You are dealt a hand of four cards from a well-shuffled deck of 52 cards.  The deck contains 4 J, 4 Q, 4 K and 4 A. Determine the probability that you receive the four cards J, Q, K, A in any order, with suit irrelevant. ## Solution= 768/812175

group(1-12).
size(1-12, 52).

given(exactly(4, 1-12, q)).
given(exactly(4, 1-12, a)).
given(exactly(4, 1-12, k)).
given(exactly(4, 1-12, j)).

take(1-12, 1-5, 4).

probability(and(and(exactly(1, 1-5, j), exactly(1, 1-5, q)), and(exactly(1, 1-5, k), exactly(1, 1-5, a)))).

property(property, [q, a, k, j]).

