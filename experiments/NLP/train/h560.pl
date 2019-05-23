% H560: Urn A contain 6 white and 4 black balls.  Urn B contains 2 white and 2 black balls.  From urn A two balls are selected at random and placed in urn B. From urn B two balls are then selected at random.What is the probability that exactly one of these two balls is white? ## Solution= 128/225

group(2-1).

group(1-1).

group(3-13).

given(exactly(2, 2-1, white)).
given(exactly(2, 2-1, black)).
given(exactly(6, 1-1, white)).
given(exactly(4, 1-1, black)).

take(1-1, 3-5, 2).
take(3-13, 3-19, 2).

union(3-13, [3-5, 2-1]).
probability(exactly(1, 3-19, white)).

property(color, [white, black]).

