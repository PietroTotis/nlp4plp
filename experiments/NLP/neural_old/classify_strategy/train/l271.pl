% L271: Determine the probability of selecting at least three white crayons when four crayons are selected from a box containing 7 white crayons and 5 blue crayons. ## Solution= 14/33

group(1-18).

given(exactly(7, 1-18, white)).
given(exactly(5, 1-18, blue)).

take(1-18, 1-13, 4).

probability(atleast(3, 1-13, white)).

property(property, [blue, white]).

