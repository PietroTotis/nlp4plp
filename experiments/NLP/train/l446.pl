% L446: I have two red pens, one green pen, and one blue pen.  I select two pens without replacement.  What is the probability that the second pen chosen is red? ## Solution= 1/2

group(pens).

given(exactly(1, pens, green)).
given(exactly(2, pens, red)).
given(exactly(1, pens, blue)).

take(pens, 2-4, 2).

probability(nth(2, 2-4, red)).

property(color, [blue, green, red]).

