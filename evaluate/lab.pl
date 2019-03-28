% H2: A jar contains 1 white, 2 red and 3 black marbles.  One selects with replacement 3 marbles.  Find the probability that precisely one of those marbles is white ## Solution= 25/72

group(1-2).

given(exactly(1, 1-2, white)).
given(exactly(3, 1-2, black)).
given(exactly(2, 1-2, red)).

take_wr(1-2, 2-6, 3).
take_wr(1-2, 2-6, 5).

probability(exactly(1, 2-6, white)).

property(property, [white, black, red]).
