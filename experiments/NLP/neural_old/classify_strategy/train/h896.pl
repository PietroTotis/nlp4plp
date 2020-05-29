% H896: Two balls are selected sequentially, without replacement, from an urn containing three red, four white, and five blue balls.  What is the probability that the first is red and the second is blue? ## Solution= 0.11363636

group(1-12).

given(exactly(3, 1-12, red)).
given(exactly(5, 1-12, blue)).
given(exactly(4, 1-12, white)).

take(1-12, 1-2, 2).

probability(and(nth(1, 1-2, red), nth(2, 1-2, blue))).

property(property, [blue, white, red]).

