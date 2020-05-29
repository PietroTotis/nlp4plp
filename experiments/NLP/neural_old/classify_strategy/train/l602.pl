% L602: Five balls are randomly chosen, without replacement, from an urn that contains 5 red, 6 white and 7 blue balls.  Find the probability that at least one ball of each color is chosen. ## Solution= 0.7066993464052288

group(1-12).

given(exactly(5, 1-12, red)).
given(exactly(7, 1-12, blue)).
given(exactly(6, 1-12, white)).

take(1-12, 1-2, 5).

probability(and(atleast(1, 1-2, red), and(atleast(1, 1-2, white), atleast(1, 1-2, blue)))).

property(property, [blue, white, red]).

