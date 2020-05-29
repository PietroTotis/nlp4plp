% H320: Two balls are drawn from a bag containing 3 red, 3 green and 4 black balls.  Find the probability that both are red. ## Solution= 1/15

group(1-7).

given(exactly(4, 1-7, black)).
given(exactly(3, 1-7, green)).
given(exactly(3, 1-7, red)).

take(1-7, 1-2, 2).

probability(all(1-2, red)).

property(property, [green, black, red]).

