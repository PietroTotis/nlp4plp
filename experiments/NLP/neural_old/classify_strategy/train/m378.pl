% M378: Marlon randomly selects three stones from a bag containing two red stones, two black stones, and two white stones.  What is the probability that Marlon selects two red stones and one black stone? ## Solution= 0.1

group(1-8).

given(exactly(2, 1-8, white)).
given(exactly(2, 1-8, red)).
given(exactly(2, 1-8, black)).

take(1-8, 1-5, 3).

probability(and(exactly(2, 1-5, red), exactly(1, 1-5, black))).

property(colour, [white, black, red]).

