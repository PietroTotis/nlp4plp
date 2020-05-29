% H330: There are 2 red balls and 4 white balls in a box.  Two balls are drawn from the box.  Find the probability that both are red. ## Solution= 1/15

group(1-12).

given(exactly(2, 1-12, red)).
given(exactly(4, 1-12, white)).

take(1-12, 2-2, 2).

probability(all(2-2, red)).

property(property, [white, red]).

