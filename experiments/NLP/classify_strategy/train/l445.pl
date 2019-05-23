% L445: I have two red pens, one green pen, and one blue pen.  I select two pens without replacement.  What is the probability that the first pen chosen is red? ## Solution= 1/2

group(pens).

given(exactly(1, pens, green)).
given(exactly(2, pens, red)).
given(exactly(1, pens, blue)).

take(pens, 3-8, 1).

probability(all(3-8, red)).

property(property, [blue, green, red]).

