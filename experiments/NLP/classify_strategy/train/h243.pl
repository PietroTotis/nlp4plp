% H243: Suppose we pick 4 balls out of an urn with 12 red balls and 8 black balls.  What is the probability of getting two black balls and two red balls? ## Solution= 0.38142415

group(1-9).

given(exactly(12, 1-9, red)).
given(exactly(8, 1-9, black)).

take(1-9, 1-5, 4).

probability(exactly(2, 1-5, black)).

property(property, [black, red]).

