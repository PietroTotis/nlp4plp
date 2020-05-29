% L604: Consider an urn containing 12 balls, of which 8 are white.  A sample of size 4 is to be drawn with replacement.  What is the conditional probability that the first and third balls drawn will be white given that the sample drawn contains exactly 3 white balls? ## Solution= 1/2

group(1-3).
size(1-3, 12).

given(exactly(8, 1-3, white)).

take(1-3, 2-2, 4).
observe(exactly(3, 2-2, white)).

probability(and(nth(1, 2-2, white), nth(3, 2-2, white))).

property(property, [white]).

