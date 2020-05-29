% L795: Two balls are drawn at random from a bag containing 5 white and 10 green balls.  Find the probability that the sample contains at least one white ball. ## Solution= 4/7

group(1-9).

given(exactly(5, 1-9, white)).
given(exactly(10, 1-9, green)).

take(1-9, 1-2, 2).

probability(atleast(1, 1-2, white)).

property(property, [white, green]).

