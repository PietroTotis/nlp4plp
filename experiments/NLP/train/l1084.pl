% L1084: An urn contains 22 marbles: 10 red, 5 green, and 7 orange.  You pick two at random without replacement.  What is the probability that the first is red and the second is orange? ## Solution= 5/33

group(1-2).
size(1-2, 22).

given(exactly(7, 1-2, orange)).
given(exactly(5, 1-2, green)).
given(exactly(10, 1-2, red)).

take(1-2, 2-3, 2).

probability(and(nth(1, 2-3, red), nth(2, 2-3, orange))).

property(property, [orange, green, red]).

