% H882: An urn contains two red and four white balls.  Balls are drawn from the urn successively, at random and with replacement.  What is the probability that exactly three whites occur in the first five trials? ## Solution= 0.32921811

group(1-2).

given(exactly(4, 1-2, white)).
given(exactly(2, 1-2, red)).

take_wr(1-2, 3-14, 5).

probability(exactly(3, 3-14, white)).

property(property, [white, red]).

