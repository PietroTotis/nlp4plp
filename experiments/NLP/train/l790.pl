% L790: An urn contains 8 white balls and 2 green balls.  A sample of three balls is selected at random.  What is the probability that the sample contains at least one green ball? ## Solution= 8/15

group(1-2).

given(exactly(8, 1-2, white)).
given(exactly(2, 1-2, green)).

take(1-2, 2-2, 3).

probability(atleast(1, 2-2, green)).

property(property, [white, green]).

