% H946: A box contains 8 red and 5 yellow marbles from which a sample of 3 is drawn.  Find the probability that the sample contains no yellow marbles if the sampling is done with replacement. ## Solution= 0.233045061447428

group(1-2).

given(exactly(8, 1-2, red)).
given(exactly(5, 1-2, yellow)).

take_wr(1-2, 1-15, 3).

probability(none(1-15, yellow)).

property(property, [red, yellow]).

