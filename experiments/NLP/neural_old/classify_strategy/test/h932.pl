% H932: Box I contains 4 green and 5 brown marbles.  Box II contains 6 green and 8 brown marbles.  A marble is chosen from Box I and placed in Box II, then a marble is drawn from Box II.  What is the probability that the second marble chosen is green? ## Solution= 0.42962962962963

group(2-1).

group(1-1).

group(3-11).

given(exactly(5, 1-1, brown)).
given(exactly(8, 2-1, brown)).
given(exactly(6, 2-1, green)).
given(exactly(4, 1-1, green)).

take(1-1, 3-2, 1).
take(3-11, 3-16, 1).

union(3-11, [3-2, 2-1]).
probability(all(3-16, green)).

property(property, [brown, green]).

