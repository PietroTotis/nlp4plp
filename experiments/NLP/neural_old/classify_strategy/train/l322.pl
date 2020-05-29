% L322: Urn A contains 5 black balls and 6 white balls.  Urn B contains 8 black balls and 4 white balls.  Two balls are transferred from B to A and then a ball is drawn from A.  What is the probability that this ball is white? ## Solution= 0.51282051

group(2-1).

group(3-8).

group(1-1).

given(exactly(4, 2-1, white)).
given(exactly(8, 2-1, black)).
given(exactly(6, 1-1, white)).
given(exactly(5, 1-1, black)).

take(3-8, 3-12, 1).
take(2-1, 3-2, 2).

union(3-8, [3-2, 1-1]).
probability(all(3-12, white)).

property(colour, [white, black]).

