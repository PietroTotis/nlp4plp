% L610: Urn I contains 2 white and 4 red balls, whereas urn II contains 1 white and 1 red ball.  A ball is randomly chosen from urn I and put into urn II, and a ball is then randomly selected from urn II.  What is the probability that the ball selected from urn II is white? ## Solution= 4/9

group(1-1).

group(2-12).

group(1-12).

given(exactly(4, 1-1, red)).
given(exactly(1, 1-12, red)).
given(exactly(2, 1-1, white)).
given(exactly(1, 1-12, white)).

take(1-1, 2-2, 1).
take(2-12, 2-17, 1).

union(2-12, [2-2, 1-12]).
probability(all(2-17, white)).

property(color, [white, red]).

