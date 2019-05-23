% L791: Two balls are drawn at random with replacement from a bag containing 5 blue and 10 red balls.  Find the probability that both the balls are either blue or red. ## Solution= 5/9

group(1-11).

given(exactly(10, 1-11, red)).
given(exactly(5, 1-11, blue)).

take_wr(1-11, 1-2, 2).

probability(or(all(1-2, red), all(1-2, blue))).

property(property, [blue, red]).

