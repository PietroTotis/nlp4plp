% H166: Urn A contains 2 white balls and 1 black ball, whereas urn B contains 1 white ball and 5 black balls.  A ball is drawn at random from urn A and placed in urn B.  A ball is then drawn from urn B.  It happens to be white.  What is the probability that the ball transferred was white? ## Solution= 4/5

group(1-1).

group(3-7).

group(1-13).

given(exactly(5, 1-13, black)).
given(exactly(1, 1-13, white)).
given(exactly(2, 1-1, white)).
given(exactly(1, 1-1, black)).

take(1-1, 2-2, 1).
take(3-7, 3-2, 1).
observe(all(3-2, white)).

union(3-7, [2-2, 1-13]).
probability(all(2-2, white)).

property(color, [white, black]).

