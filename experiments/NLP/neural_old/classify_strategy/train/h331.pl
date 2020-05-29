% H331: There are 2 red balls and 4 white balls in a box.  Two balls are drawn from the box.  Find the probability that the second ball is red when the first ball drawn is white. ## Solution= 2/5

group(rest(3-13)).

group(1-12).

given(exactly(2, 1-12, red)).
given(exactly(4, 1-12, white)).

take(1-12, 3-13, 1).
observe(all(3-13, white)).
take(rest(3-13), 3-7, 1).

probability(all(3-7, red)).

property(property, [white, red]).

