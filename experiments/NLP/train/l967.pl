% L967: Suppose an urn contains seven black balls and five white balls.  We draw two balls from the urn without replacement.  Assuming that each ball in the urn is equally likely to be drawn, what is the probability that both drawn balls are black? ## Solution= 42/132

group(1-3).

given(exactly(7, 1-3, black)).
given(exactly(5, 1-3, white)).

take(1-3, 2-4, 2).

probability(all(2-4, black)).

property(property, [white, black]).

