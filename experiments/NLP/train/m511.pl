% M511: A bucket contains 4 blue, 3 pink, and 3 yellow balls.  If four balls are chosen at random from the bucket, what is the probability that they are not blue? ## Solution= 0.0714285714285714

group(1-2).

given(exactly(3, 1-2, pink)).
given(exactly(4, 1-2, blue)).
given(exactly(3, 1-2, yellow)).

take(1-2, 2-3, 4).

probability(all(2-3, not(blue))).

property(colour, [pink, blue, yellow]).

