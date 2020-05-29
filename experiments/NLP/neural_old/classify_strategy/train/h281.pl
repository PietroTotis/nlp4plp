% H281: An urn contains 50 marbles, 35 of the marbles are green and 15 of the marbles are white.  Fifteen marbles are selected without replacement.  What is the probability for exactly 10 marbles being green? ## Solution= 0.244927

group(1-5).
size(1-5, 50).

given(exactly(15, 1-5, white)).
given(exactly(35, 1-5, green)).

take(1-5, 2-2, 15).

probability(exactly(10, 2-2, green)).

property(property, [white, green]).

