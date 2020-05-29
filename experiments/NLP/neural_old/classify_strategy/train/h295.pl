% H295: Out of a box that contains 4 black and 6 white mice, three are randomly chosen.  What is the probability that all three will be black ## Solution= 1/30

group(1-4).

given(exactly(4, 1-4, black)).
given(exactly(6, 1-4, white)).

take(1-4, 1-14, 3).

probability(all(1-14, black)).

property(property, [white, black]).

