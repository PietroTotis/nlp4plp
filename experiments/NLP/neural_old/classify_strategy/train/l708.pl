% L708: A combination lock consists of the 26 letters of the alphabet.  If a 3-letter combination is needed, find the probability that the combination will consist of the letters A B C in that order.  The same letter can be used more than once. ## Solution= 1/17576

group(1-8).
size(1-8, 26).

given(exactly(1, 1-8, c)).
given(exactly(1, 1-8, a)).
given(exactly(1, 1-8, b)).

take_wr(1-8, 2-4, 3).

probability(and(nth(1, 2-4, a), and(nth(2, 2-4, b), nth(3, 2-4, c)))).

property(property, [a, c, b]).

