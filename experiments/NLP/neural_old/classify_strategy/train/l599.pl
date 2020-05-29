% L599:  Urn A contains 3 red and 3 black balls, whereas urn B contains 4 red and 6 black balls.  If a ball is randomly selected from each urn, what is the probability that the balls will be the same color? ## Solution= 1/2

group(urn1).
group(urn2).

given(exactly(3, urn1, red)).
given(exactly(3, urn1, black)).

given(exactly(4, urn2, red)).
given(exactly(6, urn2, black)).

take(urn1, ball1, 1).
take(urn2, ball2, 1).

union(balls, [ball1, ball2]).

probability(all_same(balls, color)).

property(color, [red, black]).