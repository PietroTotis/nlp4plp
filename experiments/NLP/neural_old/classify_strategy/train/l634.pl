% L634: An urn contains 10 black and 10 white balls.  Draw 3 without replacement.  What is the probability that all three are white? ## Solution= 2/19

group(1-2).

given(exactly(10, 1-2, white)).
given(exactly(10, 1-2, black)).

take(1-2, 2-2, 3).

probability(all(2-2, white)).

property(property, [white, black]).

