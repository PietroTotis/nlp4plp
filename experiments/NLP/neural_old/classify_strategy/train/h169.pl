% H169: Six balls are to be randomly chosen from an urn containing 8 red, 10 green, and 12 blue balls.  What is the probability that at least one red ball is chosen? ## Solution= 1-(C(22,6)/C(30,6))

group(1-10).

given(exactly(8, 1-10, red)).
given(exactly(10, 1-10, green)).
given(exactly(12, 1-10, blue)).

take(1-10, 1-2, 6).

probability(atleast(1, 1-2, red)).

property(property, [blue, green, red]).

