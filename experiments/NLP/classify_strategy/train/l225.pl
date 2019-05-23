% L225: An urn contains 5 red, 5 white, and 5 blue balls.  We draw six balls independently, one after the other, with replacement.  What is the probability of obtaining 2 of each color? ## Solution= 0.12345679

group(1-2).

given(exactly(5, 1-2, blue)).
given(exactly(5, 1-2, white)).
given(exactly(5, 1-2, red)).

take_wr(1-2, 2-4, 6).

probability(and(exactly(2, 2-4, red), and(exactly(2, 2-4, white), exactly(2, 2-4, blue)))).

property(property, [blue, white, red]).

