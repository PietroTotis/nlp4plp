% L1079: An urn contains 16 black balls and 3 purple balls.  Two balls are to be drawn one at a time without replacement.  What is the probability of drawing out a black on the first draw and a purple on the second? ## Solution= 0.14035088

group(1-2).

given(exactly(3, 1-2, purple)).
given(exactly(16, 1-2, black)).

take(1-2, 2-2, 2).

probability(and(nth(1, 2-2, black), nth(2, 2-2, purple))).

property(property, [purple, black]).

