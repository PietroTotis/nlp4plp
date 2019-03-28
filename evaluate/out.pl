% H2: A jar contains 1 white, 2 red and 3 black marbles.  One selects with replacement 3 marbles.  Find the probability that precisely one of those marbles is white ## Solution= 25/72

group(pippo).
group(Ciao).

probability(exactly(1, 2-6, white)).

given(exactly(1, pippo, white)).
given(exactly(3, pippo, black)).
given(exactly(2, pippo, red)).

take_wr(Pippo, 2-6, 3).

property(property, [white, black, red]).
